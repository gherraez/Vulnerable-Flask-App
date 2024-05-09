FROM python:3.13.0b1-slim

WORKDIR /apps/

COPY app/ /apps/

WORKDIR /apps/

RUN pip install -U pip setuptools && pip install -r /apps/requirements.txt

EXPOSE 5050

ENTRYPOINT ["python"]

CMD ["app.py"]