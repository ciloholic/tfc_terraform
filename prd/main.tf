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
