variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ami_id" {
  type    = string
  default = "ami-0c6615d1e95c98aca"
}

variable "key_name" {
  type    = string
  default = "linuxdemoaws"
}
