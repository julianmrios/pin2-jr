resource "aws_key_pair" "my_key" {
  key_name = "julianmrios" 
  public_key = file("julianmrios.pem") 
  }

resource "aws_instance" "apachewebserver" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = "t2.micro"
  key_name                    = "aws_key_pair.my_key.key_name"
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.sg.id]
  subnet_id                   = aws_subnet.subnet.id
  user_data                   = file("createapache.sh")

  tags = {
    Name = "apachewebserver"
  }
}
