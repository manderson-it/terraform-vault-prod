terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "manderson-it"

    workspaces {
      name = "terraform-vault-prod"
    }
  }
}
