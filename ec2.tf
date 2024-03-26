provider "aws"
{
 region = "us-east=1"
}
resource "aws_instance" "myec2-instance"
{
ami = "ami-080e1f13689e07408"
instance_type = t2.micro
