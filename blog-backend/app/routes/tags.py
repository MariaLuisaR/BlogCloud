from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from .. import models, schemas
from ..database import SessionLocal

router = APIRouter(prefix="/tags", tags=["Tags"])

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

@router.get("/")
def list_tags(db: Session = Depends(get_db)):
    return db.query(models.Tag).all()

@router.post("/")
def create_tag(tag: schemas.TagCreate, db: Session = Depends(get_db)):
    existing_tag = db.query(models.Tag).filter(models.Tag.name == tag.name).first()
    if existing_tag:
        raise HTTPException(status_code=400, detail="Tag already exists")
    new_tag = models.Tag(name=tag.name)
    db.add(new_tag)
    db.commit()
    return new_tag
