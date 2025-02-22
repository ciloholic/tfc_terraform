terraform {
  backend "remote" {
    organization = "ciloholic"

    workspaces {
      name = "test_prd"
    }
  }
}

resource "null_resource" "prd" {}

resource "null_resource" "prd_2" {}
