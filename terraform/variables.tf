variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "westeurope"
}

variable "prefix" {
  description = "Prefix for resource naming"
  type        = string
  default     = "cyna"
}
