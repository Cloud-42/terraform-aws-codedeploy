# ---------------------------------------
# s3 Bucket
# ---------------------------------------
resource "aws_s3_bucket" "data" {
  bucket = var.data_bucket_name
  acl    = "private"
  versioning {
    enabled = "true"
  }
  tags = var.tags
  lifecycle_rule {
    enabled = var.lifecycle_rule_enabled

    expiration {
      days = var.expiration
    }
  }
}
