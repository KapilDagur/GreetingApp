from fastapi import FastAPI

app = FastAPI()

@app.get('/')
def greet():
    return {"message" : "Hello Dear!"}

@app.get('/{name}/')
def user_greet(name: str):
    return {"message": f"Hello {name}??"}

