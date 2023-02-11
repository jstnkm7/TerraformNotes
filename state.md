everytime we do terraform apply or destroy
the output will have refreshing state messages

determine/calculate if anything needs to be done between current state and desired state

i. terraform stores current state is stored in .tfstate file
it refreshes .tfstate 

ii. the backup file is stored in .tfstate.backup

subcommands:
list    list resources in the state
mv      move an item in the state
pull    pullc urrent state and output to stdout
push    update remote state from a local state file
replace-provider    replace provider in the state
rm  remove instances from the state
show    show a resource in the state


