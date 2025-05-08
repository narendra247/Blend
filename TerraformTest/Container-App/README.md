## Prerequisites

1.  Ensure you have an active Azure subscription / Subscription ID
2.  Install the PowerShell Azure modules and Azure CLI on your windows machine and log in using `az login`.  ( While there are multiple ways to authneticate to azure from terraform like using env variables in terraform cloud workspaces) I have chooses azure cli to run it locally from your machine.

   a) In the browser, you can login with your user account considering you have the necessary permissions on the subscription for this deployment.
   b) you can also use a service principal like below

      az login --service-principal --username APP_ID --password CLIENT_SECRET --tenant TENANT_ID

     *** we can encode the secret without passing the client-secret in the above command using powershell Get-Crednetial***

    

3.  Downlaod and Install Terraform (set required PATH variables)

4. Environment Setup:
   - Ensure your user account/service principal have the necessary permissions to create resources in your Azure subscription.
   - Set the subscription ID using `az account set --subscription "sub name" (If you want to override the default sub)

## Setup Instructions

1. Clone or download this repository.

2. Navigate to the project directory:
  
   cd Container-App
3) Initialize the Terraform working directory:

terraform init



###### Steps to run the deployment  ##########


Validate, plan and apply  the Terraform configuration: ( You can define approvals to someone review the plan and apply in production)

terraform validate
terraform plan -out=tfplan
terraform apply tfplan

Once the deployment is complete, Terraform will output the public URL of the Container App.



######### Assumptions and Requirements ######

The Azure CLI must be authenticated with an account that has sufficient permissions.

No additional environment variables are required beyond Azure CLI authentication.



####### Expected Outputs ########

Following output will be displayed:

container_app_url: The public URL of the Container App (https://<ContainerAppName>.azurecontainerapps.io).

You can access the Container App by navigating to this URL in a web browser, where the nginx welcome page should be displayed.


