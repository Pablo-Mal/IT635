sudo -u postgres psql < allinOne.sql | sleep 3
sudo -u postgres psql < insertAllinOne.sql | sleep 3
python3 ./checkInv.py