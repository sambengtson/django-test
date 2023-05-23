FROM public.ecr.aws/docker/library/python:3.9-alpine

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . code
WORKDIR /code

RUN chmod a+x mysite/run.sh
EXPOSE 8000

# runs the production server
CMD ["mysite/run.sh"]