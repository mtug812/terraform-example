variable "ec2_instance_type" {
  description = "Instance type for development"
  type        = string
  default     = "t2.nano"
}

variable "ec2_ami" {
  description = "ubuntu-ami-eu-central-1"
  type        = string
  default     = "ami-0084a47cc718c111a"
}

variable "port_egress" {
  description = "Egress Port Configuration allow all"
  type = object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  })
  variable "availability_zone" {
  description = "The availability zone for the instances"
  type        = string
  default     = "eu-central-1a"  # sau orice altă zonă disponibilă
}

variable "region" {
  description = "The AWS region for the resources"
  type        = string
  default     = "eu-central-1"  # sau altă regiune dorită
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.0.0/20"  # sau alt CIDR block dorit
}

  default = {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
