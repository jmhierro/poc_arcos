terraform {
  backend "s3"  {
    encrypt = "true"
    bucket = "poc-arcos-terraform-tfstate"
    dynamodb_table = "poc-arcos-terraform-tfstate"
    region = "us-east-1"
    key = "trm"
  }
  required_providers {
    awx = {
      source = "nolte/awx"
      version = "0.2.2"
    }
  }  
}


