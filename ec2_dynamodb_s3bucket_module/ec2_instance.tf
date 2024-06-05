resource "aws_instance" "ec2-instance" {
  ami                         = var.ami_image
  instance_type               = var.instance_type
  availability_zone           = "${var.region}b"
  associate_public_ip_address = true

  tags = {
    Name = var.ec2_name
  }

  depends_on = [aws_s3_bucket.tax_documents]
}