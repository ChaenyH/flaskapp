FROM python:3.8



WORKDIR /app



COPY requirements.txt requirements.txt



# Upgrade pip

RUN pip3 install --upgrade pip



# Install dependencies

RUN pip3 install --no-cache-dir -r requirements.txt



COPY . .



EXPOSE 5000



CMD [python3, -m, flask, run, --host=0.0.0.0]

