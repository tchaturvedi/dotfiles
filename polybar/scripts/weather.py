#!/usr/bin/env python3
# encoding: utf-8

import requests
from time import sleep

API_KEY='5a5d3ab7e2c09ac9887e6f3ce3ed4e98'
CITY='Seattle,US'
sleeping = False

if not sleeping:
    r = requests.get('http://api.openweathermap.org/data/2.5/weather?q={}&appid={}&units={}'.format(CITY, API_KEY,'imperial'))

    rsp = r.json()
    sleeping = True
    sleep(60)

print(rsp['name'], rsp['main']['temp'], rsp['weather'][0]['main'])
