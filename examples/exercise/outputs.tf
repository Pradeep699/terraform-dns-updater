# ----------------------------------------
# Write your Terraform module outputs here
# ----------------------------------------
output "id" {
value = [for i in local.json_files: module.dns_updater[i].id]
}
