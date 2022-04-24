resource "aws_s3_bucket" "demo_bucket" {
  bucket = "challenge-tf-demo-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "challange"
  }
}

resource "aws_s3_bucket_acl" "demo_bucket_acl" {
  bucket = aws_s3_bucket.demo_bucket.id
  acl    = "private"
}
