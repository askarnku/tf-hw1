provider "aws" {
  region = "us-east-1"
}

#yourNametentech-first-bucket , yourNametentech-second-bucket ,yourNametentech-third-bucket

resource "aws_s3_bucket" "first_bucket" {
  bucket = "tentek-askar-first-bucket"
  force_destroy = true
  tags = {
    Name = "My first bucket"
  }
}

resource "aws_s3_bucket" "second_bucket" {
  bucket = "tentek-askar-second-bucket"
  force_destroy = true
  tags = {
    Name = "My second bucket"
  }
}

resource "aws_s3_bucket" "third_bucket" {
  bucket = "tentek-askar-third-bucket"
  force_destroy = true
  tags = {
    Name = "My third bucket"
  }
}
