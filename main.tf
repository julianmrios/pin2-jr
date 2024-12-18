##provider "aws" {
## region = "us-east-2"
##  }

resource "aws_instance" "web" {
  ami           = "ami-036841078a4b68e14"
  instance_type = "t2.micro"

  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update
              sudo apt-get install apache2 -y
              sudo systemctl start apache2
              sudo systemctl enable apache2
              EOF

  tags = {
    Name = "ApacheServer"
  }
}
