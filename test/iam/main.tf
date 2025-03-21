provider "aws" {
    region = "us-east-1"
    //version = "~> 2.46" (No longer necessary)
}

terraform {
  backend "s3" {
    bucket = "tarlok-s3-tes111" # Will be overridden from build
    key    = "path/to/my/key" # Will be overridden from build
    region = "us-east-1"
  }
}


resource "aws_iam_user" "my_iam_user" {
    name = "my_iam_user"
}

resource "aws_iam_user" "my_iam_user11" {
    name = "my_iam_user11"
}
