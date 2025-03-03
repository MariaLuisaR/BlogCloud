from fastapi import APIRouter, Depends, HTTPException, Query
from sqlalchemy.orm import Session
from .. import models, schemas, auth
from ..database import SessionLocal
from typing import List, Optional

router = APIRouter(prefix="/posts", tags=["Posts"])

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

@router.get("/", response_model=List[schemas.PostResponse])
def list_posts(tag: Optional[str] = Query(None), db: Session = Depends(get_db)):
    query = db.query(models.Post)
    if tag:
        query = query.join(models.Post.tags).filter(models.Tag.name == tag)
    posts = query.all()
    return [
        {
            "id": post.id,
            "title": post.title,
            "content": post.content[:100] + "...",
            "author": post.author.name if post.author else "Desconocido",
            "author_id": post.author_id,
            "tags": [tag.name for tag in post.tags],
            "rating": sum(r.value for r in post.ratings) / len(post.ratings) if post.ratings else 0,
            "created_at": post.created_at
        }
        for post in posts
    ]

@router.post("/")
def create_post(post: schemas.PostCreate, db: Session = Depends(get_db), user: models.User = Depends(auth.get_current_user)):
    if not user:
        raise HTTPException(status_code=401, detail="No autorizado.")
    
    new_post = models.Post(
        title=post.title,
        content=post.content,
        author_id=user.id
    )
    
    for tag_name in post.tags:
        tag = db.query(models.Tag).filter(models.Tag.name == tag_name).first()
        if not tag:
            tag = models.Tag(name=tag_name)
            db.add(tag)
        new_post.tags.append(tag)
    
    db.add(new_post)
    db.commit()
    db.refresh(new_post)
    
    return {
        "message": "Post creado exitosamente",
        "post": {
            "title": new_post.title,
            "content": new_post.content,
            "author": user.name,
            "author_id":new_post.author_id,
            "tags": [tag.name for tag in new_post.tags],
            "created_at": new_post.created_at
        },
    }

@router.put("/{post_id}")
def update_post(post_id: int, post_data: schemas.PostCreate, db: Session = Depends(get_db), user: models.User = Depends(auth.get_current_user)):
    post = db.query(models.Post).filter(models.Post.id == post_id, models.Post.author_id == user.id).first()
    if not post:
        raise HTTPException(status_code=403, detail="No autorizado para editar este post.")
    
    post.title = post_data.title
    post.content = post_data.content
    
    # Update tags
    post.tags = []
    for tag_name in post_data.tags:
        tag = db.query(models.Tag).filter(models.Tag.name == tag_name).first()
        if not tag:
            tag = models.Tag(name=tag_name)
            db.add(tag)
        post.tags.append(tag)
    
    db.commit()
    db.refresh(post)
    
    return {"message": "Post actualizado", "post": post}

@router.delete("/{post_id}")
def delete_post(post_id: int, db: Session = Depends(get_db), user: models.User = Depends(auth.get_current_user)):
    post = db.query(models.Post).filter(models.Post.id == post_id, models.Post.author_id == user.id).first()
    if not post:
        raise HTTPException(status_code=403, detail="No autorizado para eliminar este post.")
    
    db.delete(post)
    db.commit()
    
    return {"message": "Post eliminado"}

@router.post("/{post_id}/rate")
def rate_post(post_id: int, rating: schemas.RatingCreate, db: Session = Depends(get_db), user: models.User = Depends(auth.get_current_user)):
    post = db.query(models.Post).filter(models.Post.id == post_id).first()
    if not post:
        raise HTTPException(status_code=404, detail="Post no encontrado.")
    
    if post.author_id == user.id:
        raise HTTPException(status_code=400, detail="No puedes calificar tu propio post.")
    
    existing_rating = db.query(models.Rating).filter(models.Rating.post_id == post_id, models.Rating.user_id == user.id).first()
    if existing_rating:
        existing_rating.value = rating.rating
    else:
        new_rating = models.Rating(post_id=post_id, user_id=user.id, value=rating.rating)
        db.add(new_rating)
    
    db.commit()
    
    return {"message": "Calificación registrada"}

@router.get("/{post_id}", response_model=schemas.PostResponse)
def get_post(post_id: int, db: Session = Depends(get_db)):
    post = db.query(models.Post).filter(models.Post.id == post_id).first()
    if not post:
        raise HTTPException(status_code=404, detail="Post no encontrado.")
    
    return {
        "id": post.id,
        "title": post.title,
        "content": post.content,
        "author": post.author.name if post.author else "Desconocido",
        "author_id": post.author_id,
        "tags": [tag.name for tag in post.tags],
        "rating": sum(r.value for r in post.ratings) / len(post.ratings) if post.ratings else 0,
        "created_at": post.created_at
    }

