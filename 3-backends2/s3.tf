resource "random_id" "buckket_sufix" {
  byte_length = 6
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "example-bucket-${random_id.buckket_sufix.hex}"
}

output "bucket_name" {
  value = aws_s3_bucket.example_bucket.bucket
}