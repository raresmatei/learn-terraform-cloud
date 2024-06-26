variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExampleAppServerInstance"
}

variable "instance_type" {
  description = "Value of the type tag for the EC2 instance"
  type        = string
  default= "t2.micro"
}
