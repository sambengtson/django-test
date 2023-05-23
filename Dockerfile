FROM python:3.7

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . code
WORKDIR /code

RUN chmod a+x mysite/run.sh
EXPOSE 8000

# runs the production server
CMD ["mysite/run.sh"]