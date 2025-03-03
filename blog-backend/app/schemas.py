from pydantic import BaseModel
from typing import List, Optional
from datetime import datetime

class UserCreate(BaseModel):
    name: str
    email: str
    password: str

class PostCreate(BaseModel):
    title: str
    content: str
    tags: List[str]

class RatingCreate(BaseModel):
    rating: int

class TagCreate(BaseModel):
    name: str

class PostResponse(BaseModel):
    id: int
    title: str
    content: str
    author: str
    author_id: int
    tags: List[str]
    rating: float
    created_at: datetime

    class Config:
        orm_mode = True
