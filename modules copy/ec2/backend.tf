terraform {
  backend "s3" {
    bucket         = "cybercloud"
    key            = "backend/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "lock-state"
    encrypt        = true
  }
}