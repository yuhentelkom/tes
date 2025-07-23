FROM python:3.13
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
COPY .env .
EXPOSE 5000
CMD ["python", "app.py"]