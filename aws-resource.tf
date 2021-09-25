


resource "aws_instance" "drone-ci" {
    ami = "ami-09e67e426f25ce0d7"
    instance_type = "t2.micro"
    tags = {

        Name= "drone-ci"
    }
}