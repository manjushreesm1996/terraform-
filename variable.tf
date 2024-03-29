variable "inst_type" {
  type    = string
  default = "t2.micro"
}

variable "image_id" {
  type    = string
  default = "ami-0c101f26f147fa7fd"
}


variable "number_of_instances" {
  type    = number
  default = 1
}

