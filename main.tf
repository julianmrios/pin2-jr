##Create and bootstrap webserver #lanzar
resource "aws_instance" "apachewebserver" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = "t2.micro"
  key_name                    = "temp"
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.sg.id]
  subnet_id                   = aws_subnet.subnet.id
  user_data                   = file("createapache.sh")

  tags = {
    Name = "apachewebserver"
  }
}
