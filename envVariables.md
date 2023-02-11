don't hardcode credentials into .tf

two ways we can set these credentials for an AWS
so that terraform can pick it up

setting up environmental variables

export AWS_SECRET_ACCESS_KEY = 13929048129045920489014ur9012u4109u
export AWS_ACCESS_KEY_ID = JFJSKLFJSKLDFJSKLFJKSLDFJKLSDFJ

terraform apply -var-file terrform-dev.tfvars

the same exact environemental variable that we need to set AWS 

if you want to have globally configured AWS credentials, you need to configure them into the home directly

`~/.aws/credentials

a default location for storing AWS credentials

terraform can pick it up

aws configure

you can type in the access key ID
and the secret key ID
as well as the default region



