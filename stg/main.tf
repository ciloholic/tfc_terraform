terraform {
  backend "remote" {
    organization = "ciloholic"

    workspaces {
      name = "test_stg"
    }
  }
}

resource "null_resource" "stg_1" {}

resource "null_resource" "stg_3" {}
