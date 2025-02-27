from pydantic import BaseModel, Field
from typing import List

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
    tags: List[str]
    rating: float

    class Config:
        orm_mode = True
