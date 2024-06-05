resource "aws_s3_bucket" "tax_documents" {

  bucket = var.s3bucket_name
  tags = {
    Name = var.s3bucket_name
  }
}