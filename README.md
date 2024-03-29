# NeurOD

## How-to

1. Customize values in django.env and postgres.env
2. docker-compose up
3. Init DB, create super user, collect static files:

```bash
docker compose exec web python /app/manage.py makemigrations
docker compose exec web python /app/manage.py migrate
docker compose exec web python /app/manage.py createsuperuser
docker compose exec web python /app/manage.py collectstatic
```

4. Access `127.0.0.1:8090/admin`

<h1 align="center">NeuroDiagnost
<img src="https://github.com/kkwwaa/NeurOD/blob/main/amscsait/static/image/Ner (1) (1).png" height="50"/></h1>
<h2>screenshots</h2>
<h3>Homepage</h3>
<img src='https://github.com/kkwwaa/NeurOD/assets/120415812/ea8efbd8-c6bd-40df-b921-14d1f8dc5fde' alt='reg/log'>
<h3>Add patient</h3>
<img src='https://github.com/kkwwaa/NeurOD/assets/120415812/14cd2db7-3407-4740-a945-caa8caeba720' alt='homepage'>
<h3>View patient</h3>
<img src='https://github.com/kkwwaa/NeurOD/assets/120415812/8c42e23b-6b97-4834-82b1-7c1432c0a08a' alt='view'>
<h3>Exam</h3>
<img src='https://github.com/kkwwaa/NeurOD/blob/main/amscsait/static/image/collage.png' alt='exam'>
<h3>Tables</h3>
<img src='https://github.com/kkwwaa/NeurOD/assets/120415812/ebb03d51-62ff-4c4c-a873-f37fe23efb48' alt='tables'>
<h3>Graph</h3>
<img src='https://github.com/kkwwaa/NeurOD/assets/120415812/a384032d-4455-423c-b9a5-0d8893f83e5a'>
