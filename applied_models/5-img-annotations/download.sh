mkdir data
#wget http://msvocds.blob.core.windows.net/annotations-1-0-3/captions_train-val2014.zip -P ./data/ # old link does not work
wget https://github.com/peteanderson80/SPICE/raw/refs/heads/master/src/main/data/coco/annotations/captions_train2014.json -P ./data/ # okay link does work
wget http://images.cocodataset.org/zips/train2014.zip -P ./data/
wget http://images.cocodataset.org/zips/val2014.zip -P ./data/

mkdir -p data/annotations
mv data/captions_train2014.json data/annotations/captions_train2014.json
#unzip ./data/captions_train-val2014.zip -d ./data/
#rm ./data/captions_train-val2014.zip
unzip ./data/train2014.zip -d ./data/
#rm ./data/train2014.zip 
unzip ./data/val2014.zip -d ./data/ 
#rm ./data/val2014.zip 
