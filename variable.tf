variable "key_pair_name" {
  description = "key_pair_name"
  type        = string
}

variable "ami" {
 default = "ami-0cc9838aa7ab1dce7"
}

variable "instance_type" {
  description = "instance_type"
  type        = string
}

variable "instance_tag" {
  description = "Tag given to each deployed Instance"
  type = list(string)
}


variable "counter" {
  description = "Number of instances to launch"
  type        = number
}

variable "file_name" {
  description = "Name of the key pair"
  type        = string
}

variable "cidr_block" {
  description = "CIDR Block"
  type = string
}

variable "availability_zone"{
  description = "Availability Zones for the Subnet"
  type = string
}
