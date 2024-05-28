"- Downloading wikitext-103-v1 (Word)"
python prep_wiki.py
mkdir -p data
mv wikitext-103/ data/wikitext-103/
cd data/wikitext-103
mv wiki.train.tokens train.txt
mv wiki.valid.tokens valid.txt
mv wiki.test.tokens test.txt
cd ..
cd ..
rm wikitext-103.tar.gz
