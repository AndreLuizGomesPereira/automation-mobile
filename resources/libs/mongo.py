from robot.api.deco import keyword
from pymongo import MongoClient

client = MongoClient(
    "mongodb+srv://andregomesenator:Ntfs)4821@markx.cjrvc.mongodb.net/?retryWrites=true&w=majority&appName=markX"
)
db = client.test


@keyword("Remove task from database")
def remove_task_by_name(task_name):
    db["tasks"].delete_many({"text": task_name})
    print("Removendo a tarefa " + task_name)
