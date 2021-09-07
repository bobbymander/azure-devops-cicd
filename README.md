# Overview

This project demonstrates the creation of an app service that performs ML prediction and shows continuous integration using Azure Pipelines so changes automatically trigger a new deployment.  The prediction service was written for us, we handled the building and deployment in Azure.

## Project Plan

* A link to a Trello board for the project:  https://trello.com/b/3CT8vQCI/azure-ci-cd-pipeline
* A link to a spreadsheet that includes the original and final project plan:  https://docs.google.com/spreadsheets/d/e/2PACX-1vTztCSCs5Tm4Kw7JfiS-OqhtgNsr4pvC8y-C_Y7R0avR6P7MBMO7pzfbyg15YCxN5GgvI0mlwmWAx8f/pubhtml
* A link to the video demo:  <TBD>

## Architectural Diagram 
  ![Architecture](https://user-images.githubusercontent.com/5559085/132357039-a1adccfb-47db-4e51-bfc4-f0e5fc352b68.JPG)

## Instructions

* Open Azure Cloud Shell from the Azure Portal

* Clone the repo from GitHub
```
git clone git@github.com:bobbymander/azure-devops-cicd.git
```
  
* Create the virtual env
```
cd azure-devops-cicd/
python3 -m venv ~/.myrepo
source ~/.myrepo/bin/activate
make all
```
* Create the app service
```
az webapp up -n bobby-devops-cicd
```
* Create the pipeline (full details here:  https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops)
- Login to https://dev.azure.com
- Create a project
- Create service connection to Azure Resource Manager
- Create a new pipeline and attach to GitHub repo
  
* Run the test
```
./make_predict_azure_app.sh
```

## These screenshots show various points in the process
* Project running on Azure App Service

* Project cloned into Azure Cloud Shell

* Passing tests that are displayed after running the `make all` command from the `Makefile`

* Output of a test run

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).

* Running Azure App Service from Azure Pipelines automatic deployment

* Successful prediction from deployed flask app in Azure Cloud Shell.  
  

* Output of streamed log files from deployed application

> 

## Enhancements

* The prediction service itself can be enhanced.
* The testing script can be included in the pipeline as a post test.
* If multiple developers will be involved, support for branches in the pipelines could be added.

## Demo 

<TODO: Add link Screencast on YouTube>


