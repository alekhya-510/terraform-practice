provider "aws"
{
 region = "us-east-1"
}
resource "aws_instance" "myec2-instance"
{
ami = "ami-080e1f13689e07408"
instance_type = "t2.micro"
key_name="hanvi"
user_data= <<-EOF
              #! /bin/bash
              sudo apt update -y
              sudo apt install fontconfig openjdk-17-jre -y
              sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
              https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
              echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
              https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
              /etc/apt/sources.list.d/jenkins.list > /dev/null
              sudo apt-get update -y
              sudo apt-get install jenkins -y
              sudo apt install python3 -y
              EOF
tags={
Name="my-instance"
}
}

