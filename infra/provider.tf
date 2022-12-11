terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.40.0"
    }
  }
  
  backend "s3" {
    bucket = "analytics-1046"
    key    = "1046/exam.state"
    region = "eu-west-1"
  }
}