[![Actions Status](https://github.com/bobbymander/azure-devops-cicd/workflows/Python%20application%20test%20with%20Github%20Actions/badge.svg)](https://github.com/bobbymander/azure-devops-cicd/actions)

# Overview

This project demonstrates the creation of an app service that performs ML prediction and shows continuous integration using Azure Pipelines so changes automatically trigger a new deployment.  The prediction service was written for us, we handled the building and deployment in Azure.  The project takes us from managing the code in Azure Cloud Shell to the GitHub repo with GitHub actions enabled to Azure DevOps portal to create and manage pipelines to Azure Web Apps that provide a service to clients.  All parts need to be configured and deployed correctly for proper operation.  Any changes to the codebase trigger both GitHub Actions and Azure Pipelines for the app...

## Project Plan

* A link to a Trello board for the project:  https://trello.com/b/3CT8vQCI/azure-ci-cd-pipeline
* A link to a spreadsheet that includes the original and final project plan:  https://docs.google.com/spreadsheets/d/e/2PACX-1vTztCSCs5Tm4Kw7JfiS-OqhtgNsr4pvC8y-C_Y7R0avR6P7MBMO7pzfbyg15YCxN5GgvI0mlwmWAx8f/pubhtml
* A link to the video demo:  https://youtu.be/lgin1HhTACI

## Architectural Diagram 
![Architecture2](https://user-images.githubusercontent.com/5559085/132392568-15fa6efd-4770-4379-bc60-2d514839440e.JPG)

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
![appservicerunning](https://user-images.githubusercontent.com/5559085/132364492-0b350fc8-dfcf-4a54-b807-be939dd295cc.JPG)

* Project cloned into Azure Cloud Shell
  ![gitclone](https://user-images.githubusercontent.com/5559085/132364653-b2e919bf-c4b4-4bb3-8116-b20f87c853fd.JPG)


* Passing tests that are displayed after running the `make all` command from the `Makefile`
  ![MakeAllTestPassedScreenshot](https://user-images.githubusercontent.com/5559085/132364708-4d018206-f581-4ddd-9ccf-7718dd8e37b2.JPG)


* Output of a test run
  ![testoutput](https://user-images.githubusercontent.com/5559085/132364750-2da0ea5d-ffa3-4019-97e2-530fd5f56554.JPG)

* Output of GitHub Actions
![githubpassed3](https://user-images.githubusercontent.com/5559085/132394715-705754ec-8d0f-4814-b182-be6496386e1d.JPG)


* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).

* Azure App Service Deployment shown in Portal
![appservicedeployment](https://user-images.githubusercontent.com/5559085/132396331-bd969cba-ec29-4a36-86da-6d49b1dc149a.JPG)


* Running Azure App Service from Azure Pipelines automatic deployment (this shows a manual and automatic deployment)
  ![pipelinesdeploy](https://user-images.githubusercontent.com/5559085/132364787-eebbae7a-f32c-498b-b1b1-2092fae496c9.JPG)


* Successful prediction from deployed flask app in Azure Cloud Shell.  
  ![testoutput](https://user-images.githubusercontent.com/5559085/132364839-8b8e521f-5dd1-479c-8b9c-010da47c61f9.JPG)


* Output of streamed log files from deployed application
![logtail](https://user-images.githubusercontent.com/5559085/132364891-0270cbe7-2fc4-4aa6-837e-86100008c9b5.JPG)

## Load testing
In order to perform load testing we will use locust.  To run follow these steps:
```
pip install locust
locust
```
Then launch webpage http://localhost:8089/ as shown below.
![locustin](https://user-images.githubusercontent.com/5559085/132411904-e4379d90-4130-4805-90fc-263bc1672ba5.JPG)

Once the load test is stopped, you will see the results screen as shown below.
![locustout](https://user-images.githubusercontent.com/5559085/132411972-a596aee4-2aad-435a-8803-807578237840.JPG)

## Enhancements

* The prediction service itself can be enhanced.
* The testing script can be included in the pipeline as a post test.
* If multiple developers will be involved, support for branches in the pipelines could be added.

## Demo 

Screencast link is here:  https://youtu.be/lgin1HhTACI


