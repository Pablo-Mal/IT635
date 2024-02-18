sudo -u postgres psql
pip3 install psycopg2-binary
sudo apt-get update
wget https://raw.githubusercontent.com/Pablo-Mal/IT635/main/test3/allinOne.sql
wget https://github.com/Pablo-Mal/IT635/blob/main/test3/checkInv.py
wget https://github.com/Pablo-Mal/IT635/blob/main/test3/insertAllinOne.sql
sudo -u postgres psql < allinOne.sql
sudo -u postgres psql < insertAllinOne.sql
python3 ./checkInv.py