# SMI-TED &nbsp;/&nbsp; Inference for SMILES

[![License MIT](https://img.shields.io/github/license/acceleratedscience/openad_service_utils)](https://opensource.org/licenses/MIT)
[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)
[![Docs](https://img.shields.io/badge/website-live-brightgreen)](https://acceleratedscience.github.io/openad-docs/)  
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![macOS](https://img.shields.io/badge/mac%20os-000000?style=for-the-badge&logo=macos&logoColor=F0F0F0)
![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)

<br>

## About

<!-- description -->
This OpenAD service provides access to the **SMILES-based Transformer Encoder-Decoder** (SMILES-TED), which is an encoder-decoder model pre-trained on a curated dataset of 91 million SMILES samples sourced from PubChem, equivalent to 4 billion molecular tokens. SMI-TED supports various complex tasks, including quantum property prediction, with two main variants ( 289 M and 8 × 289 M ).

More information:  
[huggingface.co/ibm/materials.smi-ted](https://huggingface.co/ibm/materials.smi-ted)  
[github.com/IBM/materials](https://github.com/IBM/materials)  
[arxiv.org/abs/2407.20267](https://arxiv.org/abs/2407.20267)
<!-- /description -->

For instructions on how to deploy and use this service in OpenAD, please refer to the [OpenAD docs](https://openad.accelerate.science/docs/model-service/prepackaged-models).

> [!Note]
> The current version of `app.py` excludes all properties other than _QM9_ properties. You can change this to include _QM8_ and _Molecule > Net_ if checkpoints available, simply by changing the selected algorithms list.

<br>

## Deployment Options

- ✅ [Deploy locally using a Python virtual environment](https://openad.accelerate.science/docs/model-service/prepackaged-models)
- ✅ [Deploy locally via container](https://openad.accelerate.science/docs/model-service/prepackaged-models#containerizing-a-model)
- ✅ [Deploy locally via container with compose.yml](https://openad.accelerate.science/docs/model-service/prepackaged-models#deployment-via-container-composeyml)
- ✅ [Deploy on OpenShift](https://openad.accelerate.science/docs/model-service/prepackaged-models)
- ✅ [Deploy on SkyPilot](https://openad.accelerate.science/docs/model-service/prepackaged-models/#deploying-to-skypilot-on-aws)
