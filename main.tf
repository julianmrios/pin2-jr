provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0" # Cambia esto por el ID de AMI que necesites
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
