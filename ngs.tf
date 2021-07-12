resource "aws_security_group" "demong1" {
  name = "demonsg1"
  description = "Default Security Group"
  vpc_id = aws_vpc.demovpc.id 
  ingress {
      description="Allow SSH"
      from_ip=22
      to_ip=22
      protocol="tcp"
      cidr_blocks=["0.0.0.0/0"]
  }
  egress  {
    cidr_blocks = [ "0.0.0.0/0" ]
    description = "Allow all outbound traffic"
    from_port = 0
    protocol = "-1"
    to_port = 0
  } 
}

resource "aws_security_group" "demong2" {
  name = "demonsg2"
  description = "Web app Security Group"
  vpc_id = aws_vpc.demovpc.id 
  ingress {
      description="Allow http"
      from_ip=80
      to_ip=80
      protocol="tcp"
      cidr_blocks=["0.0.0.0/0"]
  }
}