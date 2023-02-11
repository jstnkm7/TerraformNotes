`$ mkdir /root/terraform-local-file 
 $ cd /root/terraform-local-file`

`<block> <parameters> {
    key1 = value1
    key2 = value2
}`

a block in teraform contains information about the infrastructure platform

and a set of resource within that platform that we want to create

for example, let us simple consider a simple task

this is directory under which we will create the HCL configuration file
 
in local.tf

we can find a resource block like this 

`resource "local_file" "pet" {
    filename = "/root/pets.txt"
    content = "We love pets!"
}

**Steps**

i. write the terraform command

ii. init command

`terrafirm init`

iii. plan command

`terraform plan`

show the actions carried by terraform to create the resource

iv. apply command

`terraform apply`

shows the execution plan again but this time will prompt yes or no

we can verify with cat command or terraform show command

