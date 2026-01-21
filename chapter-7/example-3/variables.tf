# Sets global variables for this Terraform project.

variable app_name {
}

variable location {
  default = "koreacentral"
}

variable kubernetes_version {    
}

variable subscription_id {
  description = "Azure subscription ID"
  type        = string
  default     = "d792bbb5-7bed-4a2b-a184-48ec9928e031"
}