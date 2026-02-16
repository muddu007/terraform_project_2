terraform {
  backend "s3" {
    bucket = "terraform-s3-bucket-ci-cd-848586"
    key    = "terraform.tfstate"
    region = "ap-northeast-3"
  }
}