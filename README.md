<img src='images/smiling_teddy_bear.png'> 

# SMI-TED Inference for SMILES <!-- omit from toc -->

[![License MIT](https://img.shields.io/github/license/acceleratedscience/openad_service_utils)](https://opensource.org/licenses/MIT)
[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)
[![Docs](https://img.shields.io/badge/website-live-brightgreen)](https://acceleratedscience.github.io/openad-docs/) <br>
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![macOS](https://img.shields.io/badge/mac%20os-000000?style=for-the-badge&logo=macos&logoColor=F0F0F0)
![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)

## About: <!-- omit from toc -->
<About Text needed>

SMILES-based Transformer Encoder-Decoder (SMILES-TED) is an encoder-decoder model pre-trained on a curated dataset of 91 million SMILES samples sourced from PubChem, equivalent to 4 billion molecular tokens. SMI-TED supports various complex tasks, including quantum property prediction, with two main variants ( 289 M and 8 × 289 M ).

This repository provides a Python-based tool to access the SMI-TED models via a REST API. Once the API is set up, use the OpenAD Toolkit to easily access the inference functions of SMI-TED. 

More information on SMI-TED can be found at:<br> 
- https://huggingface.co/ibm/materials.smi-ted
- https://github.com/IBM/materials/tree/main
- https://arxiv.org/abs/2407.20267

More information on the OpenAD Toolkit and OpenAD Service Utilities:
- https://accelerate.science/projects/openad
- https://github.com/acceleratedscience/open-ad-toolkit
- https://github.com/acceleratedscience/openad_service_utils

--- 

## Deployment Options <!-- omit from toc -->

<!-- toc -->

- [Deployment locally using a Python virtual environment](#deployment-locally-using-a-python-virtual-environment)

- [Deployment locally via container](#deployment-locally-via-container)

- [Deployment On OpenShift](#deployment-lon-openshift)

- [Deployment via Sky Pilot](#deployment-via-sky-pilot)

<!-- tocstop -->
Note: All of these deployment options will allow you to access SMI-TED functions using the [OpenAD Toolkit](https://github.com/acceleratedscience/open-ad-toolkit).  You may want to first install the Toolkit in its own Python environment before proceeding with deploying the SMI-TED utility. <br>

--- 

# Deployment locally using a Python virtual environment 
<br>
You will need a Python level of 3.11 & to follow these installation directions:<br>
<br>

1. Use your favorite Python environment manager (e.g., Conda, Pyenv) to create a new Python 3.11.10 environment <br>

2. Activate the new environment and install the required Python modules for SMI-TED per the "Getting Started" instructions at this site (ignore the requirement to use Python 3.9): <br>
   https://github.com/IBM/materials/<br>
   
3. Install the OpenAD Service Utilities in the new environment with the following command:<br>
   `pip install git+https://github.com/acceleratedscience/openad_service_utils.git@nested_implementation`<br>

4. Clone this repo into a new directory: <br>
   `git clone https://github.com/acceleratedscience/openad_smi_ted`<br>
   
5. Change directory to `openad_smi_ted` then start the server with the following command:<br>
   `python app.py`<br>

6. Open a new terminal session and start the OpenAD Toolkit:<br>
   `openad`<br>

7. At the OpenAD Toolkit command line execute the following command to create a new service for accessing the local server started in step 5:<br>
   `catalog model service from remote 'http://127.0.0.1:8080/' as sm`<br>

8. At the OpenAD Toolkit command line execute the following command to view the available commands:<br>
   `sm ?`

***Note***: The first time you request a particular property (e.g., "qm8-e1-cam") the OpenAD Service Utility will take some time to download and locally cache the correct models. Requests will proceed much faster once models are cached locally.  

# Deployment locally via container
<br>

***Prerequisites***: Make sure you have Docker and the Docker Buildx plugin installed on your system.<br>

1. Clone this repo into a new directory: <br>
   `git clone https://github.com/acceleratedscience/openad_smi_ted`<br>

2. To build the Docker image, change directory to `openad_smi_ted` then start the build with the following command:<br>
   `docker build -t smi-ted-app .`<br>

3. After the build is complete, execute the following command to run the container and have the server available on port 8080:
   `docker run -p 8080:8080 smi-ted-app`

4. Open a new terminal session and start the OpenAD Toolkit:<br>
   `openad`<br>

5. At the OpenAD Toolkit command line execute the following command to create a new service for accessing the local server started in step 3:<br>
   `catalog model service from remote 'http://0.0.0.0:8080/' as sm`<br>

6. At the OpenAD Toolkit command line execute the following command to view the available commands:<br>
   `sm ?`   

# Deployment On OpenShift 
<br>
Helm Charts are coming soon.<br>


# Deployment via Sky Pilot
<br>
Support for skypilot on AWS is coming soon
<br>
