FROM python:3.7
WORKDIR /home/student/app
COPY requirements.txt /home/student/app
RUN pip install -r requirements.txt
COPY . /home/student/app
EXPOSE 5000
ENTRYPOINT ["python3", "app.py"]
