Database credentials are injected via an env variable
const {username, host, dbname, password, port} = JSON.parse(process.env.DJANGOTESTCLUSTER_SECRET)

# Templates & parameters
cd ./infrastructure

# Cloudformation templates generated with the help of AWS Copilot
https://aws.github.io/copilot-cli/

copilot app init example-company

copilot env init -n example-env

copilot svc init --name app --svc-type "Load Balanced Web Service" --dockerfile ./Dockerfile

copilot env deploy --name example-env

copilot deploy

copilot svc package --upload-assets --output-dir ./infrastructure

# pipeline
copilot pipeline init
# follow instructions for setting up codestar connection