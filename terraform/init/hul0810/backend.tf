terraform {
  required_version = ">= 1.0.0"

  backend "s3" {
    bucket         = "hul0810-apnortheast2-tfstate"
    key            = "provisioning/terraform/init/hul0810/terraform.tfstate"
    region         = "ap-northeast-2"
    encrypt        = true
    dynamodb_table = "eks-terraform-lock"
  }
}
