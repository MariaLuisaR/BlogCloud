from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from .. import schemas, crud, auth
from ..database import get_db

router = APIRouter()

@router.post("/ratings/", response_model=schemas.Rating)
def create_rating(rating: schemas.RatingCreate, db: Session = Depends(get_db), current_user: schemas.User = Depends(auth.get_current_user)):
    return crud.create_rating(db=db, rating=rating)
