resource "aws_instance" "ec2_demo" {
  ami                    = "ami-0c6615d1e95c98aca"
  instance_type          = "t2.micro"
  key_name               = "linuxdemoaws"
  subnet_id              = "subnet-018c57440536753aa"
  vpc_security_group_ids = [aws_security_group.ec2_demo_sg.id]

  tags = {
    Name = "Created_By_Terraform_Automation"
  }

  user_data = <<-EOF
              #!/bin/bash
                yum update -y
                yum install -y httpd
                systemctl start httpd.service
                systemctl enable httpd.service
                echo "Welcome to Terraform Demo!!!, I am $(hostname -f) hosted by Terraform" > /var/www/html/index.html
              EOF

}
