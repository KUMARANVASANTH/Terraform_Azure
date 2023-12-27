variable "location" {
  description = "The location of the resources 1"
  type        = string
  # default     = "autraliaeast"
}
variable "location-2" {
  description = "The location of the resource 2"
  type        = string
}
variable "location-3" {
  description = "The location of the vhub"
  type        = string
}
# variable "databricks_sku" {
#   type        = string
#   description = <<EOT
#     (Optional) The SKU to use for the databricks instance"

#     Default: standard
# EOT

#   validation {
#     condition     = can(regex("standard|premium|trial", var.databricks_sku))
#     error_message = "Err: Valid options are 'standard', 'premium' or 'trial'."
#   }
# }