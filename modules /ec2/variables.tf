variables "aws_ami"{
    description = "This is the AMI to be deployed"
    type        = string
}

variable "instance_type" {
    description   = "This is the instance type we are deploying in dev environment"
    type          = string
}

variable "availability_zone" {
     decription    = "This is the AZ where resources would be provisioned"
     type          = string
}

variable "tags" {
    description   = ""
    type          = map
    default       = {}
}

variable "region" {
    decription    = "The rehion to deploy the instance"
    type          = string
}



variable "provider" {
    description   = ""
    type          = string
}
