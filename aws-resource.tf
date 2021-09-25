
provider "aws" {
    access_key = "AKIAWKSTNSOWYZTHPZJ4"
    secret_key = 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
    region = "us-east-1"

}

resource "aws_instance" "drone-ci" {
    ami = "ami-09e67e426f25ce0d7"
    instance_type = "t2.micro"
    tags = {

        Name= "drone-ci"
    }
}