# Azure Infrastructure Operations Project: Deploying a scalable IaaS web server in Azure

### Introduction
For this project, you will write a Packer template and a Terraform template to deploy a customizable, scalable web server in Azure.

### Getting Started
1. Clone this repository

2. Create your infrastructure as code

3. Update this README to reflect how someone would use your code.

### Dependencies
1. Create an [Azure Account](https://portal.azure.com)

2. Install the [Azure command line interface](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)

3. Install [Packer](https://www.packer.io/downloads)

4. Install [Terraform](https://www.terraform.io/downloads.html)

### Instructions
1. Azure Policy Deploying
    - Create an Azure policy that allows the Resource Creation only with Tags
    
2. Create a Packer image
    - Create an image resource group
    - Create a Service Principal for Terraform and store the make not of output values `appId`, `displayName`, `name`, `password`, and `tenant`
    - Create the envionment vriables for the abpve output of service principle
    - Complete the Packer template file and create the image using packer
    
3. Deploy Azure resources with Terraform
    - Complete terraform configuration files
    - Plan and apply the Terraform deployment by using the coomands `terraform plan -var-file terraform.tfvars -out tfplan.out`, `terraform apply "tfplan.out"`

4. Destroy all Azure resources built by Terraform
    - Destroy by using `terraform destroy`
    - Destroy image built by Packer using the commanfd `az image delete -g packer-rg -n my-packer-image`
