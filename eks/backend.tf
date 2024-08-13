terraform {
  backend "s3" {
    bucket         = "my-ews-aniket"
    key            = "path/to/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "Lock-Files"
    encrypt        = true
  }
}
