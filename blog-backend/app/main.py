from fastapi import FastAPI
from app.routes import posts
from fastapi.middleware.cors import CORSMiddleware
from app.database import create_tables

app = FastAPI()

create_tables()

app.include_router(posts.router)

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

@app.get("/")
def read_root():
    return {"message": "¡Hola, mundo desde FastAPI!"}
