How to download and execute this project automated and manually.

Automated:
  There has been mixed results with these bash scripts, but these are the steps.
    -	Run wget https://raw.githubusercontent.com/Pablo-Mal/IT635/main/test3/script.sh
    -	Run sudo bash script.sh
          ---	This will check for updates and then pull the two sql files, python file, and script2.sh from github
    -	Run bash script2.sh
          --- This will use the default user “postgres” and create the database and tables. Then it will run checkInv.py and allow you to interact with the tables in the DB as the user “project_user”

Manually:
  Run the following commands:
    -	wget https://raw.githubusercontent.com/Pablo-Mal/IT635/main/test3/allinOne.sql
    -	wget https://raw.githubusercontent.com/Pablo-Mal/IT635/main/test3/insertAllinOne.sql
    -	wget https://raw.githubusercontent.com/Pablo-Mal/IT635/main/test3/checkInv.py
    -	sudo -u postgres psql < allinOne.sql
    -	sudo -u postgres psql < insertAllinOne.sql
    -	python3 ./checkInv.py
