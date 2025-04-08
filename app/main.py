from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def hello_world():
    return {"Hello": "World"}

@app.get("/items/{item_id}")
def read_item(item_id, q):
    return {"item_id": item_id, "q": q}
