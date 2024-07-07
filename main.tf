provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraform-march-ife" {
  bucket = "terraform-march-ife"
}
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraform-up-and-running-state-ife"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}