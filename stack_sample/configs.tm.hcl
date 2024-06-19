// Configure default Terraform version and default providers
globals "terraform" {
  version = ">= 1.6.0"
}

globals "terraform" "providers" "btp" {
  version = "~> 1.4.0"
}

globals "terraform" "modules" "btp_subaccount_module" {
  source = "../../modules/basic_subaccount_setup"
}

//ATTENTION: The path is always taken relative to the stack directories
globals "terraform" "rolecollections" "subaccount_admins_prod" {
  admin_list = tm_split(",", tm_file("../../user_lists/admins.txt"))
}