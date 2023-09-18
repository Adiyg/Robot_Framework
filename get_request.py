import requests

def diya_get(url,headers=None,params=None):
    response = requests.get(url,headers=headers,params=params)
    return response
    