# Dockerfile
FROM apache/airflow:2.2.3

USER root

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER airflow

# Install Python dependencies
COPY requirements.txt /opt/airflow/requirements.txt
RUN pip install --no-cache-dir -r /opt/airflow/requirements.txt

# Copy project files
COPY . /opt/airflow/dags/project

# Set the working directory
WORKDIR /opt/airflow/dags/project