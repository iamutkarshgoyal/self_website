from fastapi import FastAPI, Request
from fastapi.responses import HTMLResponse
from fastapi.staticfiles import StaticFiles
from fastapi.templating import Jinja2Templates

app = FastAPI()
app.mount("/static", StaticFiles(directory="static"), name="static")

templates = Jinja2Templates(directory="templates")

@app.get("/", response_class=HTMLResponse)
async def home_page(request: Request):
    return templates.TemplateResponse("Main.html", {"request": request})

@app.get("/education", response_class=HTMLResponse)
async def education_page(request: Request):
    return templates.TemplateResponse("Education.html", {"request": request})

@app.get("/experience", response_class=HTMLResponse)
async def experience_page(request: Request):
    return templates.TemplateResponse("Experience.html", {"request": request})

@app.get("/projects", response_class=HTMLResponse)
async def projects_page(request: Request):
    return templates.TemplateResponse("Projects.html", {"request": request})

@app.get("/resume", response_class=HTMLResponse)
async def resume_page(request: Request):
    return templates.TemplateResponse("Resume.html", {"request": request})
