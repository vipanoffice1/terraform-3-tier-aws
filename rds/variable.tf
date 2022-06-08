##########################
variable "region_name"{
  description = ""
  type = string
  default = "ap-south-1"
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

##########engine##############
variable "engine" {
  description = "engine"
  type        = string
  default     = "mysql"
}

##########engine_version##############
variable "engine_version" {
  description = "engine_version"
  type        = string
  default     = "5.7"
}

##########db_name##############
variable "db_name" {
  description = "db_name"
  type        = string
  default     = "testDB"
}

##########username##############
variable "username" {
  description = "username"
  type        = string
  default     = "test"
}

##########password##############
variable "password" {
  description = "password"
  type        = string
  default     = "test12345"
}

##########instance_class##############
variable "instance_class" {
  description = "instance_class"
  type        = string
  default     = "db.t2.micro"
}

##########publicly_accessible##############
variable "publicly_accessible" {
  description = "publicly_accessible"
  type        = bool
  default     = false
}

variable "skip_finalSnapshot" {
  type    = bool
  default = true
}

variable "delete_automated_backup" {
  type    = bool
  default = true
}

variable "multi_az_deployment" {
  description = "Enable or disable multi-az deployment"
  type        = bool
  default     = false
}