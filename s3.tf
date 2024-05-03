# Create S3 Bucket
resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
}

# Upload file to S3
resource "aws_s3_object" "terraform_index" {
  bucket       = aws_s3_bucket.bucket.id
  key          = var.key_file
  source       = var.key_file
  content_type = var.content_type
  etag         = filemd5(var.key_file)
}

# S3 Web hosting
resource "aws_s3_bucket_website_configuration" "terraform_hosting" {
  bucket = aws_s3_bucket.bucket.id

  index_document {
    suffix = var.key_file
  }
}
