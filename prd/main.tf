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

data "http" "ipinfo" {
  url = "https://ipinfo.io"

  request_headers = {
    Accept = "application/json"
  }
}

output "json" {
  value = data.http.ipinfo.request_body
}
