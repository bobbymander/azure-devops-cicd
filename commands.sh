git clone git@github.com:bobbymander/azure-devops-cicd.git
cd azure-devops-cicd/
python3 -m venv ~/.myrepo
source ~/.myrepo/bin/activate
make all
az webapp up -n bobby-devops-cicd
./make_predict_azure_app.sh

