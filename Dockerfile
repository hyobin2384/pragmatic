FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/hyobin2384/pragmatic.git

WORKDIR /home/pragmatic/

RUN pip install -r requirements.txt

RUN echo "SECRET_KEY=django-insecure-utf*2x24cy(+_$0dd@$s%+ak^$j5059j%=ihwrcqz@_y8w=r*1"> /home/pragmatic/pragmatic/.env

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]