# Use NVIDIA's CUDA 11.8 base image with UBI 8 (Red Hat Universal Base Image)
# FROM docker.io/nvidia/cuda:11.8.0-runtime-ubi8
# FROM docker.io/nvidia/cuda:12.6.2-runtime-ubi9
FROM fedora:latest

# Set environment variables
ENV PYTHONUNBUFFERED=1 \
    PYTHON_VERSION=3.11.10 \
    HF_HOME="/tmp/.cache/huggingface" \
    MPLCONFIGDIR="/tmp/.config/matplotlib" \
    LOGGING_CONFIG_PATH="/tmp/app.log" \
    gt4sd_local_cache_path="/tmp/.openad_models" \
    GT4SD_S3_HOST="s3.us-east-2.amazonaws.com" \
    GT4SD_S3_ACCESS_KEY="AKIATZKIEHYRXDBHLZHQ" \
    GT4SD_S3_SECRET_KEY="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" \
    GT4SD_S3_HOST_HUB="s3.us-east-2.amazonaws.com" \
    GT4SD_S3_ACCESS_KEY_HUB="AKIATZKIEHYRXDBHLZHQ" \
    GT4SD_S3_SECRET_KEY_HUB="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" 
   
# Install dependencies and Python, then clean up in a single RUN command
RUN dnf update -y && \
    dnf install -y vim gcc openssl-devel bzip2-devel libffi-devel zlib-devel wget make \
                   openssh-server openssh-clients sqlite-devel git xz xz-devel && \
    wget https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tgz && \
    tar xzf Python-${PYTHON_VERSION}.tgz && \
    cd Python-${PYTHON_VERSION} && \
    ./configure --enable-optimizations && \
    make altinstall && \
    ln -sf /usr/local/bin/python3.11 /usr/bin/python3 && \
    ln -sf /usr/local/bin/pip3.11 /usr/bin/pip3 && \
    cd .. && \
    rm -rf Python-${PYTHON_VERSION} Python-${PYTHON_VERSION}.tgz && \
    dnf clean all

# Set up working directory
WORKDIR /workspace

# Copy necessary files
COPY app.py ./
COPY load.py ./
COPY property_classifier.py ./
COPY requirements.txt ./

# Install dependencies. 
RUN pip3 install --no-cache-dir -r requirements.txt 

# Expose the port your application runs on
EXPOSE 8080

# Set default command
CMD ["python3", "app.py"]
