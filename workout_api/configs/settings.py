from pydantic_settings import BaseSettings
from pydantic import PostgresDsn
import os

class Settings(BaseSettings):
    DB_URL: PostgresDsn = os.getenv("DB_URL", "postgresql+asyncpg://workout:workout@localhost:5432/workout")
    
    class Config:
        env_file = ".env"

settings = Settings()