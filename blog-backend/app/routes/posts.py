from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from .. import models, schemas, auth
from ..database import SessionLocal
from typing import List

router = APIRouter(prefix="/posts", tags=["Posts"])

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

@router.post("/")
def create_post(
    post: schemas.PostCreate,
    db: Session = Depends(get_db),
    user: models.User = Depends(auth.get_current_user),
):
    if not user:
        raise HTTPException(status_code=401, detail="No autorizado.")

    new_post = models.Post(
        title=post.title,
        content=post.content,
        author_id=user.id
    )

    db.add(new_post)
    db.commit()
    db.refresh(new_post)

    return {
        "message": "Post creado exitosamente",
        "post": {
            "title": new_post.title,
            "content": new_post.content,
            "author": user.name,
        },
    }

@router.get("/", response_model=List[schemas.PostResponse])
def list_posts(db: Session = Depends(get_db)):
    posts = db.query(models.Post).all()

    return [
        {
            "id": post.id,
            "title": post.title,
            "content": post.content,
            "author": post.author.name if post.author else "Desconocido",
            "tags": [tag.name for tag in post.tags],
            "rating": sum(r.value for r in post.ratings) / len(post.ratings) if post.ratings else 0
        }
        for post in posts
    ]


@router.get("/{post_id}", response_model=schemas.PostResponse)
def get_post(post_id: int, db: Session = Depends(get_db)):
    post = db.query(models.Post).filter(models.Post.id == post_id).first()

    if not post:
        raise HTTPException(status_code=404, detail="Post no encontrado")

    return {
        "id": post.id,
        "title": post.title,
        "content": post.content,
        "author": post.author.name if post.author else "Desconocido",
        "tags": [tag.name for tag in post.tags],
        "rating": sum(r.value for r in post.ratings) / len(post.ratings) if post.ratings else 0
    }
