#!/bin/bash

rm -rf c4_deployment-5
python3.7 -m venv test
source test/bin/activate
git clone https://github.com/bjones519/Kura_C4_D5.git
cd Kura_C4_D5
pip install -r requirements.txt
pip install gunicorn
python database.py
sleep 1
python load_data.py
sleep 1 
python -m gunicorn app:app -b 0.0.0.0 -D
echo "Done"

