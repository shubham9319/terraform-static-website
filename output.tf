# Website URL
output "website_url" {
  value = "http://${aws_s3_bucket.bucket.bucket}.s3-website.${aws_s3_bucket.bucket.region}.amazonaws.com"
}
