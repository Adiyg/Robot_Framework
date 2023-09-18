import requests

def diya_delete(url):
    response = requests.delete(url)
    return response