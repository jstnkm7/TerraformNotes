you can use variables inside configuration files

you can define a variable
this is handy when you use re-use values multiple times

we can use call the value of the variable with `var.`

example:

`variable "subnet_cidr_block" {
    description = "subnet block cidr"
}`

when you run `terraform apply` you will be prompted from the command line to enter a value



another way is `terraform apply -var "subnet_cidr_block=10.0.30.0/24"`


.tfvars is a file terraform will automatically find and recognize as a variables file
we can define key value pairs for our variables


DEV - terraform-dev.tfvars
STAGING - terraform-dev.tfvars
PROD - terraform-dev.tfvars

Example of default values

`variable "subnet_cidr_block" {
    description = "subnet block cidr"
    default = "10.0.10.0/24"
}`

type constraints

`variable "subnet_cidr_block" {
    description = "subnet block cidr"
    default = "10.0.10.0/24"
    type = string
}`

# enforce type to help your users, and set which type are used for your variable

