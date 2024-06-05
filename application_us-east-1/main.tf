provider "aws" {
  # Configuration options
  region = "us-east-1"
}

module "vpc_one" {

  source = "../ec2_dynamodb_s3bucket_module"

  # Variables for region:
  region = "us-east-1"
  ami_image = "ami-00beae93a2d981137"
  instance_type = "t2.micro"
  ec2_name      = "olha-ec2-us-east-1"
  dynamo_db_name = "olha-dynamo-db-us-east-1"
  s3bucket_name = "olha-s3-bucket-us-east-1"
}
