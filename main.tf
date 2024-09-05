provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-state-46dc7020e6341676"
    key = "tf-hw1/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-locks-hw-tf1"
    encrypt = false
  }
}

resource "aws_s3_bucket" "first_bucket" {
  bucket = "tentek-askar-bucket-one"
  force_destroy = true
  tags = {
    Name = "My first bucket"
  }
}

resource "aws_s3_bucket" "second_bucket" {
  bucket = "tentek-askar-bucket-two"
  force_destroy = true
  tags = {
    Name = "My second bucket"
  }
}

resource "aws_s3_bucket" "third_bucket" {
  bucket = "tentek-askar-bucket-three"
  force_destroy = true
  tags = {
    Name = "My third bucket"
  }
}

resource "aws_vpc" "vpc_tentek_one" {
  cidr_block = "10.0.0.0/24"
}

resource "aws_vpc" "vpc_tentek_two" {
  cidr_block = "10.1.0.0/24"
}

resource "aws_vpc" "vpc_tentek_three" {
  cidr_block = "10.2.0.0/24"
}