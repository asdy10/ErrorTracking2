FROM python:3.10
RUN pip install --upgrade pip
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt && chmod 755 .
COPY . .
CMD ["python", "-u", "app.py"]