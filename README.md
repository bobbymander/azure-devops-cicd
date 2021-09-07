# Overview

This project demonstrates the creation of an app service that performs ML prediction and shows continuous integration using Azure Pipelines so changes automatically trigger a new deployment.  The prediction service was written for us, we handled the building and deployment in Azure.

## Project Plan

* A link to a Trello board for the project:  https://trello.com/b/3CT8vQCI/azure-ci-cd-pipeline
* A link to a spreadsheet that includes the original and final project plan:  https://docs.google.com/spreadsheets/d/e/2PACX-1vTztCSCs5Tm4Kw7JfiS-OqhtgNsr4pvC8y-C_Y7R0avR6P7MBMO7pzfbyg15YCxN5GgvI0mlwmWAx8f/pubhtml
* A link to the video demo:  <TBD>

## Instructions

<TODO:  
* Architectural Diagram (Shows how key parts of the system work)>
  ![Architecture](https://user-images.githubusercontent.com/5559085/132357039-a1adccfb-47db-4e51-bfc4-f0e5fc352b68.JPG)


<TODO:  Instructions for running the Python project.  How could a user with no context run this project without asking you for any help.  Include screenshots with explicit steps to create that work. Be sure to at least include the following screenshots:

* Project running on Azure App Service

* Project cloned into Azure Cloud Shell

* Passing tests that are displayed after running the `make all` command from the `Makefile`

* Output of a test run

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).

* Running Azure App Service from Azure Pipelines automatic deployment

* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/make_predict_azure_app.sh).
The output should look similar to this:

```bash
udacity@Azure:~$ ./make_predict_azure_app.sh
Port: 443
{"prediction":[20.35373177134412]}
```

* Output of streamed log files from deployed application

> 

## Enhancements

<TODO: A short description of how to improve the project in the future>

## Demo 

<TODO: Add link Screencast on YouTube>


