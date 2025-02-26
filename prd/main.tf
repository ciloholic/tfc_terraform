terraform {
  backend "remote" {
    organization = "ciloholic"

    workspaces {
      name = "test_prd"
    }
  }
}

resource "null_resource" "prd_1" {}

resource "null_resource" "prd_2" {}

resource "terraform_data" "command" {
  provisioner "local-exec" {
    command = "ip addr show"
  }
}
