variable "bucket_name" {
  default = "terraform-demo-99"
}

variable "key_file" {
  default = "index.html"
}

variable "content_type" {
  default = "text/html"
}

variable "block_public_acls" {
  default = "false"
}

variable "block_public_policy" {
  default = "false"
}

variable "ignore_public_acls" {
  default = "false"
}

variable "restrict_public_buckets" {
  default = "false"
}

variable "policy_action" {
  default = "s3:GetObject"
}
