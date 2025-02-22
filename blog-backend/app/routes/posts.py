from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from .. import schemas, crud, auth
from ..database import get_db

router = APIRouter()

@router.get("/posts/", response_model=List[schemas.Post])
def read_posts(skip: int = 0, limit: int = 100, db: Session = Depends(get_db)):
    posts = crud.get_posts(db, skip=skip, limit=limit)
    return posts

@router.post("/posts/", response_model=schemas.Post)
def create_post(post: schemas.PostCreate, db: Session = Depends(get_db), current_user: schemas.User = Depends(auth.get_current_user)):
    return crud.create_post(db=db, post=post)

@router.put("/posts/{post_id}", response_model=schemas.Post)
def update_post(post_id: int, post: schemas.PostCreate, db: Session = Depends(get_db), current_user: schemas.User = Depends(auth.get_current_user)):
    db_post = crud.get_post(db, post_id=post_id)
    if db_post.author_id != current_user.id:
        raise HTTPException(status_code=403, detail="Not authorized to edit this post")
    return crud.update_post(db=db, post_id=post_id, post=post)

@router.delete("/posts/{post_id}", response_model=schemas.Post)
def delete_post(post_id: int, db: Session = Depends(get_db), current_user: schemas.User = Depends(auth.get_current_user)):
    db_post = crud.get_post(db, post_id=post_id)
    if db_post.author_id != current_user.id:
        raise HTTPException(status_code=403, detail="Not authorized to delete this post")
    return crud.delete_post(db=db, post_id=post_id)
