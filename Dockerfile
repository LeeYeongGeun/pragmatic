FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/LeeYeongGeun/pragmatic.git

WORKDIR /home/pragmatic/

RUN pip install -r requirements.txt

RUN echo "SECRET_KEY=django-insecure-se-elw^!*xkw0q2umekrv#+*m8a+(ny(g__x^!^9@_&2ehw_b!" > .env

RUN pip install gunicorn

RUN python manage.py migrate

RUN python manage.py collectstatic

EXPOSE 8000

CMD ["gunicorn", "config.wsgi", "--bind", "0.0.0.0:8000"]