##########################
variable "region_name" {
  description = ""
  type        = string
  default     = "ap-south-1"
}

##########acc_key##############
variable "acc_key" {
  description = "acc_key"
  type        = string
  default     = "acc_key"
}

##########sec_key##############
variable "sec_key" {
  description = "sec_key"
  type        = string
  default     = "sec_key"
}

variable "load_balancer" {
  type    = string
  default = "test-loadbalancer"
}