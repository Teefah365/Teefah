module "ec2_instance" {

    source   = "../../../../..//modules/ec2"
    aws_ami  = "ami-0e731c8a588258d0d"
    instance_type = "t2.micro"
    availability zone  = "us-east-1a"
    region  = "us-east-1"
    tags = {
        name = "technology"
    }
}