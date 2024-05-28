"- Downloading wikitext-103-v1 (Word)"
python prep_wiki.py
cd wikitext-103
    mv wiki.train.tokens train.txt
    mv wiki.valid.tokens valid.txt
    mv wiki.test.tokens test.txt
    cd ..
