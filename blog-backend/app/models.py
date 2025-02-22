from sqlalchemy import Column, Integer, String, Text, DateTime, ForeignKey, Table
from sqlalchemy.orm import relationship
from .database import Base

post_tags = Table(
    'post_tags', Base.metadata,
    Column('post_id', Integer, ForeignKey('posts.id')),
    Column('tag_id', Integer, ForeignKey('tags.id'))
)

class User(Base):
    __tablename__ = "users"

    id = Column(Integer, primary_key=True, index=True)
    name = Column(String, index=True)
    email = Column(String, unique=True, index=True)
    hashed_password = Column(String)

    posts = relationship("Post", back_populates="author")
    ratings = relationship("Rating", back_populates="user")

class Post(Base):
    __tablename__ = "posts"

    id = Column(Integer, primary_key=True, index=True)
    title = Column(String, index=True)
    content = Column(Text)
    author_id = Column(Integer, ForeignKey("users.id"))
    published_date = Column(DateTime)
    rating = Column(Integer, default=0)

    author = relationship("User", back_populates="posts")
    tags = relationship("Tag", secondary=post_tags, back_populates="posts")
    ratings = relationship("Rating", back_populates="post")

class Tag(Base):
    __tablename__ = "tags"

    id = Column(Integer, primary_key=True, index=True)
    name = Column(String, unique=True, index=True)

    posts = relationship("Post", secondary=post_tags, back_populates="tags")

class Rating(Base):
    __tablename__ = "ratings"

    id = Column(Integer, primary_key=True, index=True)
    user_id = Column(Integer, ForeignKey("users.id"))
    post_id = Column(Integer, ForeignKey("posts.id"))
    rating = Column(Integer)

    user = relationship("User", back_populates="ratings")
    post = relationship("Post", back_populates="ratings")
