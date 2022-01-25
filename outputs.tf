# ----------------------------------------
# Write your Terraform module outputs here
# ----------------------------------------

output "id" {
value = dns_a_record_set.www.*.id
}
