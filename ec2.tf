resource "aws_instance" "web-1" {
  ami  = "ami-0533f2ba8a1995cf9"
  availability_zone = "us-east-1a"
  instance_type = "t1.micro"
  key_name = "LaptopKey"
  subnet_id = "${aws_subnet.subnet1-public.id}"
  vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  user_data = file("jenkins.sh")	
  #tags {
   #Name = "Application Server"
   #Environment = "production"
  #}
}