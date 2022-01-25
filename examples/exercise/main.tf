# Configure the DNS Provider
provider "dns" {
  update {
    server = "127.0.0.1"
  }
}

locals {
   json_files = fileset("${path.module}/input-json", "*.json")
}


module "dns_updater" {

  source = "../../."

  for_each   = local.json_files
  json_data  = jsondecode(file("${path.module}/input-json/${each.value}"))
  name       = trimsuffix(each.value, ".json")

}
