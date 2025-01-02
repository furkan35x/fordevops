# Python resmi imajını kullanıyoruz
FROM python:3.9-slim

# Çalışma dizinini belirliyoruz
WORKDIR /app

# Gereken dosyaları konteynıra kopyalıyoruz
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Flask uygulamasını konteynıra kopyalıyoruz
COPY . .

# Uygulamayı başlatmak için komut
CMD ["python", "app.py"]
