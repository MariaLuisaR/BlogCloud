from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from .. import schemas, crud
from ..database import get_db

router = APIRouter()

@router.post("/tags/", response_model=schemas.Tag)
def create_tag(tag: schemas.TagCreate, db: Session = Depends(get_db)):
    return crud.create_tag(db=db, tag=tag)

@router.get("/tags/", response_model=List[schemas.Tag])
def read_tags(skip: int = 0, limit: int = 100, db: Session = Depends(get_db)):
    tags = crud.get_tags(db, skip=skip, limit=limit)
    return tags
