terraform {
  backend "s3" {
    bucket = "iti-emam-bucket"
    key = "project/terraform.tfstate"
    region = "us-east-1"
    #dynamodb_table = "backend"
  }
}
