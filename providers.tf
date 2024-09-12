provider "aws" {
  access_key = var.accesskey
  secret_key = var.secretaccesskey
}
terraform {
  cloud {
    organization = "entsept12"
    workspaces {
      name = "demo"
      project = "playproject-git"
    }
  }
}
resource "aws_iam_user" "playuser1" {
  name = "playuser-onehere"
}