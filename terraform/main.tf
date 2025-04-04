# Create EC2 instance
resource "aws_instance" "test_ec2" {
  ami             = var.ami_id
  instance_type   = var.ec_type
  key_name        = "for_ssh"
  depends_on      = [ 
    aws_key_pair.ssh_key
   ]
}

# Create public IP for EC2
resource "aws_eip" "eip_demo" {
    instance = aws_instance.test_ec2.id
}

# Set public SSH key for EC2
resource "aws_key_pair" "ssh_key" {
  key_name   = "for_ssh"
  public_key = file(var.public_key_path)
}

