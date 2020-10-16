FROM python:3.7
WORKDIR /home/student/app
COPY . /home/student/app
RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["python3", "app.py"]
