variable "maintainer" {
  type    = string
  default = "rene"
}

variable "ports" {
  type    = list(number)
  default = [80, 22, 443]
}
