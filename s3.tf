# ---------------------------------------
# s3 Bucket
# ---------------------------------------
resource "aws_s3_bucket" "data" {
  bucket = var.data_bucket_name

  tags = var.tags
}
#resource "aws_s3_bucket_acl" "data" {
#bucket = aws_s3_bucket.data.id
#acl    = "private"
#}
#resource "aws_s3_bucket_versioning" "data" {
#  bucket = aws_s3_bucket.data.id

#  versioning_configuration {
#    status = "Enabled"
#  }
#}

resource "aws_s3_bucket_lifecycle_configuration" "data" {
  bucket = aws_s3_bucket.data.id

  rule {
    id     = "example-rule"
    status = var.lifecycle_rule_enabled ? "Enabled" : "Disabled"

    expiration {
      days = var.expiration
    }
  }
}
