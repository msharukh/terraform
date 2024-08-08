provider "akamai" {
  edgerc         = "~/.edgerc"
  config_section = "default"
}

provider "akamai" {
  client_secret = "OViP7OTbR8riYvNKe/WSLSg2E0AKDiOKij0ZIOxtcDw="
  host          = "akab-sppzpgi6d7hfjfty-mp6sb33rc2mhxbkw.luna.akamaiapis.net"
  access_token  = "akab-wkhwc333x526x7el-rrl34gg3hrykep55"
  client_token  = "akab-vcdx7xfwm6wn3msp-hyau67f6nuoyujfi"
  config_section = "default"
}

terraform {
  required_version = ">= 1.0"
  required_providers {
    akamai = {
      source  = "akamai/akamai"
      version = ">= 2.0.0"
    }
  }
}

provider "akamai" {}

data "akamai_property_rules" "rules" {
  property_id = "prp_1"
}

output "json" {
  value = data.akamai_property_rules.rules
}
