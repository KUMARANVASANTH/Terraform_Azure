variable "location" {
  description = "The location of the reasources"
  type        = string
  default     = "autraliaeast"
}
variable "databricks_sku" {
  type        = string
  description = <<EOT
    (Optional) The SKU to use for the databricks instance"

    Default: standard
EOT

  validation {
    condition     = can(regex("standard|premium|trial", var.databricks_sku))
    error_message = "Err: Valid options are 'standard', 'premium' or 'trial'."
  }
}