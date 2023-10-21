terraform {
  backend "s3" {
    bucket = "cintya-formacao-sre-iac-terraform-state"
    key    = "formacao-sre-coast-alarm-iac-terraform.tfstate"
    region = "us-east-1"
  }
}