variable "vm_ciuser" {
  type        = string
  description = "Имя пользователя"
  default     = "zxc"
}

variable "vm_cipassword" {
  type        = string
  description = "password"
  sensitive   = true
}

variable "vm_sshkeys" {
  type        = string
  description = "sshkey"
  sensitive   = true
}
