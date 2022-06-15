#module "dynamodb_table" {
 # source   = "terraform-aws-modules/dynamodb-table/aws"
resource "aws_dynamodb_table" "state-lock"{
  name     = "my-dynamodb-state-lock"
  hash_key = "LockID"

  attribute = [
    {
      name = "LockID"
      type = "S"
    }
  ]

  tags = {
    Name = "Dynamodb State Lock Table"
    Environment = "staging"
  }
}
