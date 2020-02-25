variable "created_by" { default = "terraform" }

variable "username" {
  type = set(string)
}

variable "pgp_key" { default = "" }
