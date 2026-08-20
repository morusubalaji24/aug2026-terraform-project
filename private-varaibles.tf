locals {
  #named expression
  name_prefix = "${var.environment}-${var.owner}"
  #dev-sap
  project_tags = {      #it is the name 
    Environment = "dev" #expression on key value format seprated by equal to sign
    Owner       = "002"
    project     = "dispatch"
  }
}