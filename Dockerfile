FROM pytorch/pytorch:2.1.0-cuda12.1-cudnn8-runtime AS runtime
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Los_Angeles
ENV PYTHONUNBUFFERED=1 \
    PYTHON_VERSION=3.11.10 \
    HF_HOME="/tmp/.cache/huggingface" \
    MPLCONFIGDIR="/tmp/.config/matplotlib" \
    LOGGING_CONFIG_PATH="/tmp/app.log" \
    gt4sd_local_cache_path="/tmp/.openad_models" \
    GT4SD_S3_HOST="s3.us-east-2.amazonaws.com" \
    GT4SD_S3_ACCESS_KEY="" \
    GT4SD_S3_SECRET_KEY="" \
    GT4SD_S3_HOST_HUB="s3.us-east-2.amazonaws.com" \
    GT4SD_S3_ACCESS_KEY_HUB="" \
    GT4SD_S3_SECRET_KEY_HUB="" 
 
RUN apt-get update && apt-get install -y --no-install-recommends software-properties-common \
    build-essential curl git ssh libxrender1 libxext6\
    && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Copy the rest of the application code to the working directory
COPY ./requirements.txt ./requirements.txt
COPY ./requirements_extra.txt ./requirements_extra.txt

RUN python -m pip install --no-cache-dir -r requirements.txt 
RUN python -m pip install --no-cache-dir -r requirements_extra.txt 

COPY . .

EXPOSE 8080
# Specify the command to run when the container starts
CMD ["python", "app.py"]
