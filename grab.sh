#!/bin/bash

url="https://www.internetculturale.it/jmms/objdownload?id=oai%3A193.206.197.121%3A18%3AVE0049%3ACSTOR.244.12609&teca=marciana&resource=img&mode=raw&offset=1&start="

for i in {0..375}
do
    clear
    echo "$i/376 downloading..."
    wget "$url$i" -O download/$i.jpeg
done
