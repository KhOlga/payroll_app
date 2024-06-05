provider "aws" {
  # Configuration options
  region = "eu-west-2"
}

module "vpc_one" {

  source = "../ec2_dynamodb_s3bucket_module"

  # Variables for region:

  region = "eu-west-2"
  ami_image = "ami-06373f703eb245f45"
  instance_type = "t2.micro"
  ec2_name      = "olha-ec2-eu-west-2"
  dynamo_db_name = "olha-dynamo-db-eu-west-2"
  s3bucket_name = "olha-s3-bucket-eu-west-2"
}
