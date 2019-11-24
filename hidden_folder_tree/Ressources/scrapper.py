#!/usr/bin/env python3

import requests
from bs4 import BeautifulSoup
import time

ip = "192.168.56.102"

def scrap_recursive(base_url):

    try :
        r = requests.get(base_url)
        s = BeautifulSoup(r.text, 'html.parser')
    except Exception as e:
        print("Error:", e)
    if (s is not None):
        for href in s.find_all('a'):
            end_url = href.get('href')
            if (end_url == "README" ):
                r = requests.get(base_url + end_url)
                print(r.text.replace("\n", ""))
            elif (end_url != "../"):
                scrap_recursive(base_url + end_url)
    time.sleep(0.005) # Sleep to avoid spamming ban

if __name__ == "__main__":

    base_url = "http://{}/.hidden/".format(ip)
    scrap_recursive(base_url)
