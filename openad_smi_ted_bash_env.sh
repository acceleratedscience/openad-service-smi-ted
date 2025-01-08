#!/bin/sh
# openad_smi_ted_bash_env.sh
# Used to set env variables for accessing the open source models available for SMI-TED
export HF_HOME="/tmp/.cache/huggingface"
export MPLCONFIGDIR="/tmp/.config/matplotlib"
export LOGGING_CONFIG_PATH="/tmp/app.log"
export gt4sd_local_cache_path="/tmp/.openad_models"
export GT4SD_S3_HOST="s3.us-east-1.amazonaws.com" 
export gt4sd_s3_bucket_algorithms="ad-prod-biomed"
export gt4sd_s3_bucket_properties="ad-prod-biomed"
export GT4SD_S3_SECRET_KEY=""
export GT4SD_S3_ACCESS_KEY=""
export GT4SD_S3_HOST_HUB="s3.us-east-1.amazonaws.com"
export GT4SD_S3_ACCESS_KEY_HUB="" 
export GT4SD_S3_SECRET_KEY_HUB=""
export gt4sd_s3_bucket_hub_algorithms="ad-prod-biomed"
export gt4sd_s3_bucket_hub_properties="ad-prod-biomed"
