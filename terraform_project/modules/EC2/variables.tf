variable "maintainer" {
  type    = string
  default = "rene"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ssh_key" {
  type    = string
  default = "demo_key_pair"
}

variable "sg_name" {
  type    = string
  default = "NULL"
}

variable "public_ip" {
  type    = string
  default = "NULL"
}

variable "AZ" {
  type    = string
  default = "us-east-1"
}

variable "user" {
  type    = string
  default = "ubuntu"
}
