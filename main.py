from typing import Annotated
from fastapi import FastAPI, File, UploadFile
import os

app = FastAPI()

UPLOAD_DIRECTORY = "./uploads/"

@app.get("/")
async def root():
    return {"message": "Hello World"}

@app.post("/files")
async def create_file(
    file: Annotated[UploadFile, File()],
):
    if not os.path.exists(UPLOAD_DIRECTORY):
        os.makedirs(UPLOAD_DIRECTORY)

    file_location = os.path.join(UPLOAD_DIRECTORY, file.filename)
    with open(file_location, "wb") as f:
        f.write(await file.read())
    return {
        "file_size": os.path.getsize(file_location),
        "file_content_type": file.content_type,
        "file_name": file.filename,
    }