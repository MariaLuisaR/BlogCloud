from fastapi import FastAPI
from .database import engine
from . import models
from .routes import users, posts, ratings, tags
from fastapi.middleware.cors import CORSMiddleware

models.Base.metadata.create_all(bind=engine)

app = FastAPI()

FRONTEND_URL = "http://34.28.37.200:3000"

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

app.include_router(users.router)
app.include_router(posts.router)
app.include_router(ratings.router)
app.include_router(tags.router)
