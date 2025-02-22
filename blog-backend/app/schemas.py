from pydantic import BaseModel, EmailStr
from datetime import datetime
from typing import List, Optional

class UserBase(BaseModel):
    email: EmailStr
    name: str

class UserCreate(UserBase):
    password: str

class User(UserBase):
    id: int

    class Config:
        orm_mode = True

class PostBase(BaseModel):
    title: str
    content: str
    author_id: int
    published_date: Optional[datetime] = None
    rating: Optional[int] = 0
    tags: List[str] = []

class PostCreate(PostBase):
    pass

class Post(PostBase):
    id: int

    class Config:
        from_attributes = True

class TagBase(BaseModel):
    name: str

class TagCreate(TagBase):
    pass

class Tag(TagBase):
    id: int

    class Config:
        orm_mode = True

class RatingBase(BaseModel):
    user_id: int
    post_id: int
    rating: int

class RatingCreate(RatingBase):
    pass

class Rating(RatingBase):
    id: int

    class Config:
        orm_mode = True
