# Stacked Setup

Sample for a stacked setup with code generation for subaccount admins

In general, the recommendation would be to do a group assignment for the role collection assignments. This would make the on- and offboarding more consistent and easier to manage.

## Setup

The stacks have already been created. A news stack can be created via the following command, if the directory exists:

```bash
create --name "production3" --description "Stack for Productive environment 3" --tags "prd" stacks/prod3
```

Generate all resources via:

```bash	
terramate generate
```


## Execute

To execute the stack do the following:

```bash
terramate run terraform init
terramate run --chdir stacks/prod1 terraform plan -var globalaccount=<your global account> -var unit_short_name=sales
``` 

If the result is aht is expected execute:

```bash
terramate run --chdir stacks/prod1 terraform apply -var globalaccount=<your global account> -var unit_short_name=sales
``` 

## Changes

Change the list of admins centrally in the txt file `user_lists/admins.txt`. After that regenerate the resources via:

```bash
terramate generate
``` 

Then you can re-run the application of the stack via:

```bash
terramate run --chdir stacks/prod1 terraform apply -var globalaccount=<your global account> -var unit_short_name=sales
```

## Cleanup

To clean up the stack do the following:

```bash
terramate run --chdir stacks/prod1 terraform destroy -var globalaccount=<your global account> -var unit_short_name=sales
```