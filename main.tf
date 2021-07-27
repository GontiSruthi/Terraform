provider "aws"{
region ="us-east-2"
}
resource "aws_instance" "sru_server1" {
  ami = "ami-0603cbe34fd08cb81"
  instance_type = "t2.micro"

  tags = {
    Name = "sru_instance1"
    Env = "prod"
  }
}

output "myawsserver-ip" {
  value = aws_instance.sru_server1.public_ip
}

output "myserver-PrivateIP" {
  value = aws_instance.sru_server1.private_ip
}