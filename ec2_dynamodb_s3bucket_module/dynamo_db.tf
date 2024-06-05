resource "aws_dynamodb_table" "financial_data" {
  name             = var.dynamo_db_name
  billing_mode     = "PAY_PER_REQUEST"
  hash_key         = "WorkerID"
  range_key = "Name"

  attribute {
    name = "WorkerID"
    type = "S"
  }

  attribute {
    name = "Name"
    type = "S"
  }

  tags = {
    Name = var.dynamo_db_name
  }
}
