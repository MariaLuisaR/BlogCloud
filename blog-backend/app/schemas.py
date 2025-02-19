from pydantic import BaseModel
from datetime import datetime
from typing import List, Optional

class PostCreate(BaseModel):
    title: str
    content: str
    author_id: int

class PostResponse(PostCreate):
    id: int
    created_at: datetime

    class Config:
        from_attributes = True

