FROM python:3.11.4
# This Dockerfile is for a FastAPI application using Python 3.11.4

LABEL key="utkarsh"
LABEL version="1.0"
LABEL description="This is a sample Dockerfile for Python 3.11.4"
WORKDIR /FASTAPI

RUN pip install --upgrade pip
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 8000
CMD ["uvicorn", "main:app", "--host", "127.0.0.1", "--port", "8000", "--reload"]

# Note: Ensure that the main.py file exists in the same directory as this Dockerfile.   
# The main.py file should contain the FastAPI application instance named 'app'.
# To build the Docker image, run: docker build -t fastapi-app .
# To run the Docker container, use: docker run -p 8000:8000 fastapi-app
# You can then access the FastAPI application at http://localhost:8000  
# Ensure that you have a requirements.txt file with the necessary dependencies for your FastAPI application.
# Example requirements.txt content: 
# fastapi
# uvicorn   
# pydantic
# sqlalchemy

