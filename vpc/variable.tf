##########Region##############
variable "region_name" {
  description = "region_name"
  type        = string
  default     = "ap-south-1"
}

##########avail_zone##############
variable "avail_zone" {
  description = "avail_zone"
  type        = string
  default     = "ap-south-1b"
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

##########vpc_nam##############
variable "vpc_nam" {
  description = "vpc_nam"
  type        = string
  default     = "test_vpc"
}

##########cider##############
variable "cider" {
  description = "cider"
  type        = string
  default     = "192.168.0.0/16"
}

##########public_subnet_cider1##############
variable "public_subnet_cider1" {
  description = "public_subnet_cider1"
  type        = string
  default     = "192.168.1.0/24"
}

##########public_subnet_cider2##############
variable "public_subnet_cider2" {
  description = "public_subnet_cider2"
  type        = string
  default     = "192.168.2.0/24"
}

##########db_subnet_cider1##############
variable "db_subnet_cider1" {
  description = "db_subnet_cider1"
  type        = string
  default     = "192.168.3.0/24"
}

##########db_subnet_cider2##############
variable "db_subnet_cider2" {
  description = "db_subnet_cider2"
  type        = string
  default     = "192.168.4.0/24"
}

##########enable_dns_hostnames##############

variable "enable_dns_hostnames" {
  description = "enable_dns_hostnames"
  type        = bool
  default     = null
}

##########enable_dns_support##############
variable "enable_dns_support" {
  description = "enable_dns_support"
  type        = bool
  default     = null

}

variable "internet_gateway" {
  description = "internet_gateway"
  type        = string
  default     = "test_ig"
}

variable "pub_subnet_1" {
  description = "pub_subnet_1"
  type        = string
  default     = "pub_subnet_1"
}

variable "pub_subnet_2" {
  description = "pub_subnet_2"
  type        = string
  default     = "pub_subnet_2"
}

variable "db_subnet_1" {
  description = "db_subnet_1"
  type        = string
  default     = "db_subnet_1"
}

variable "db_subnet_2" {
  description = "db_subnet_2"
  type        = string
  default     = "db_subnet_2"
}