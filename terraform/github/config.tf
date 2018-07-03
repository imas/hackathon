variable "github_token" {
  type = "string"
}

provider "github" {
  token        = "${var.github_token}"
  organization = "imas"
}

terraform {
  backend "s3" {
    bucket = "imas-hackathon"
    key    = "terraform/github.tfstate"
    region = "ap-northeast-1"
  }
}
