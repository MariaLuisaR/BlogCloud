from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session
from .. import crud, schemas
from ..database import SessionLocal

router = APIRouter(prefix="/ratings", tags=["Ratings"])

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

@router.post("/posts/{post_id}/rate")
def rate_post(post_id: int, rating: schemas.RatingCreate, db: Session = Depends(get_db)):
    return crud.rate_post(db=db, post_id=post_id, rating=rating)

