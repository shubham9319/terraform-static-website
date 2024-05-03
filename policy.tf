# S3 public access
resource "aws_s3_bucket_public_access_block" "terraform-demo" {
  bucket = aws_s3_bucket.bucket.id
  # block_public_acls   = false
  # block_public_policy = false
  block_public_acls       = var.block_public_acls
  block_public_policy     = var.block_public_policy
  ignore_public_acls      = var.ignore_public_acls
  restrict_public_buckets = var.restrict_public_buckets
}

# S3 public Read policy
resource "aws_s3_bucket_policy" "open_access" {
  bucket = aws_s3_bucket.bucket.id

  policy = jsonencode({
    Version = "2012-10-17"
    Id      = "Public_access"
    Statement = [
      {
        Sid       = "IPAllow"
        Effect    = "Allow"
        Principal = "*"
        Action    = [var.policy_action]
        Resource  = "${aws_s3_bucket.bucket.arn}/*"
      },
    ]
  })
  depends_on = [aws_s3_bucket_public_access_block.terraform-demo]
}
