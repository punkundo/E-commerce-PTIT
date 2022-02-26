export $(xargs <.env)
python3 manage.py runserver > logs/server.log &
echo $! 
