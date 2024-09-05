resource "aws_dynamodb_table" "terraform_locks_hw_tf1" { 
  name         = "terraform-locks-hw-tf1" 
  billing_mode = "PAY_PER_REQUEST" 
  hash_key     = "LockID"
 
  attribute { 
    name = "LockID" 
    type = "S" 
  } 
}