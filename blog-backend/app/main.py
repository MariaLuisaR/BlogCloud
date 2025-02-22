from fastapi import FastAPI, Depends, HTTPException
from .database import SessionLocal, engine
from . import models, schemas, crud, auth
from sqlalchemy.orm import Session
from fastapi.middleware.cors import CORSMiddleware
from fastapi.security import OAuth2PasswordRequestForm
from typing import List

models.Base.metadata.create_all(bind=engine)

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

@app.post("/register/", response_model=schemas.User)
def register(user: schemas.UserCreate, db: Session = Depends(get_db)):
    db_user = crud.get_user_by_email(db, email=user.email)
    if db_user:
        raise HTTPException(status_code=400, detail="Email already registered")
    return crud.create_user(db=db, user=user)

@app.post("/token/")
def login(form_data: OAuth2PasswordRequestForm = Depends(), db: Session = Depends(get_db)):
    user = auth.authenticate_user(db, form_data.username, form_data.password)
    if not user:
        raise HTTPException(status_code=400, detail="Incorrect email or password")
    access_token = auth.create_access_token(data={"sub": user.email})
    return {"access_token": access_token, "token_type": "bearer"}

@app.get("/posts/", response_model=List[schemas.Post])
def read_posts(skip: int = 0, limit: int = 100, db: Session = Depends(get_db)):
    posts = crud.get_posts(db, skip=skip, limit=limit)
    return posts

@app.post("/posts/", response_model=schemas.Post)
def create_post(post: schemas.PostCreate, db: Session = Depends(get_db), current_user: schemas.User = Depends(auth.get_current_user)):
    return crud.create_post(db=db, post=post)

@app.put("/posts/{post_id}", response_model=schemas.Post)
def update_post(post_id: int, post: schemas.PostCreate, db: Session = Depends(get_db), current_user: schemas.User = Depends(auth.get_current_user)):
    db_post = crud.get_post(db, post_id=post_id)
    if db_post.author_id != current_user.id:
        raise HTTPException(status_code=403, detail="Not authorized to edit this post")
    return crud.update_post(db=db, post_id=post_id, post=post)

@app.delete("/posts/{post_id}", response_model=schemas.Post)
def delete_post(post_id: int, db: Session = Depends(get_db), current_user: schemas.User = Depends(auth.get_current_user)):
    db_post = crud.get_post(db, post_id=post_id)
    if db_post.author_id != current_user.id:
        raise HTTPException(status_code=403, detail="Not authorized to delete this post")
    return crud.delete_post(db=db, post_id=post_id)

@app.post("/tags/", response_model=schemas.Tag)
def create_tag(tag: schemas.TagCreate, db: Session = Depends(get_db)):
    return crud.create_tag(db=db, tag=tag)

@app.post("/ratings/", response_model=schemas.Rating)
def create_rating(rating: schemas.RatingCreate, db: Session = Depends(get_db), current_user: schemas.User = Depends(auth.get_current_user)):
    return crud.create_rating(db=db, rating=rating)
