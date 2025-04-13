terraform {
  backend "s3" {
    bucket  = "androzo-terraform-tfstate" # Replace with your S3 bucket name
    key     = "test-bucket.tfstate"       # Path to the state file in the folder
    region  = "sa-east-1"
    encrypt = true
  }
}

