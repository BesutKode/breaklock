FROM python:3.4-alpine
ADD . /code
WORKDIR /code
RUN pip install
CMD ["python", "app.py"]
