one option is simply removing the resource in the .tf file
and then terraform applying it to detect changes and update state

another option is using `terraform destroy` and passing in the resource name

we are passing in a `-target` with resource type and resource name

best practice: code should represent the changes made to infrastructure, so all the changes should be made through the configuration file, and use terraform apply instead of direct commands like terraform destroy




