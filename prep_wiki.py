import requests
import tarfile
from pathlib import Path

# Download the wikitext-103 dataset
fname = 'wikitext-103.tar.gz'
url = 'https://dax-cdn.cdn.appdomain.cloud/dax-wikitext-103/1.0.1/' + fname
r = requests.get(url)
Path(fname).write_bytes(r.content)
with tarfile.open(fname) as tar:
    tar.extractall()
