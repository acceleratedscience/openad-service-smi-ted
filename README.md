# SMI-TED &nbsp;/&nbsp; Property Prediction on SMILES Input

<!--
The description & support tags are consumed by the generate_docs() script
in the openad-website repo, to generate the 'Available Services' page:
https://openad.accelerate.science/docs/model-service/available-services
-->

<!-- support:apple_silicon:true -->
<!-- support:gcloud:true -->

[![License MIT](https://img.shields.io/github/license/acceleratedscience/openad_service_utils)](https://opensource.org/licenses/MIT)
[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)
[![Docs](https://img.shields.io/badge/website-live-brightgreen)](https://acceleratedscience.github.io/openad-docs/)  
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![macOS](https://img.shields.io/badge/mac%20os-000000?style=for-the-badge&logo=macos&logoColor=F0F0F0)
![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)

<br>

## About

<!-- description -->
This OpenAD service provides access to **SMILES-based Transformer Encoder-Decoder** (SMI-TED), a foundation model for materials science and chemistry. SMI-TED is an encoder-decoder model pre-trained on a curated dataset of 91 million SMILES samples sourced from PubChem, equivalent to 4 billion molecular tokens. SMI-TED offers several predictive models, including quantum property prediction, with two main variants ( 289 M and 8 × 289 M ).

More information:  
[github.com/IBM/materials](https://github.com/IBM/materials)  
[huggingface.co/ibm/materials.smi-ted](https://huggingface.co/ibm/materials.smi-ted)  
[arxiv.org/abs/2407.20267](https://arxiv.org/abs/2407.20267)
<!-- /description -->

For instructions on how to deploy and use this service in OpenAD, please refer to the [OpenAD docs](https://openad.accelerate.science/docs/model-service/deploying-models).

> [!Note]
> The current public version of `app.py` includes only `QM9` properties from MoleculeNet. You can augment this to include `QM8` and additional MoleculeNet properties (grouped under `MoleculeNet`) by changing the selected algorithms list, if the model checkpoints are available.

<br>

## Deployment Options

- ✅ [Deployment via container + compose.yaml](https://openad.accelerate.science/docs/model-service/deploying-models#deployment-via-container-composeyaml-recommended)
- ✅ [Deployment via container](https://openad.accelerate.science/docs/model-service/deploying-models#deployment-via-container)
- ✅ [Local deployment using a Python virtual environment](https://openad.accelerate.science/docs/model-service/deploying-models#local-deployment-using-a-python-virtual-environment)
- ✅ [Cloud deployment to Google Cloud Run](https://openad.accelerate.science/docs/model-service/deploying-models#cloud-deployment-to-google-cloud-run)
- ✅ [Cloud deployment to Red Hat OpenShift](https://openad.accelerate.science/docs/model-service/deploying-models#cloud-deployment-to-red-hat-openshift)
- ✅ [Cloud deployment to SkyPilot on AWS](https://openad.accelerate.science/docs/model-service/deploying-models/#cloud-deployment-to-skypilot-on-aws)
