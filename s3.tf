# ---------------------------------------
# s3 Bucket
# ---------------------------------------

resource "aws_s3_bucket" "data" {
  bucket_prefix = "${var.environment}-${aws_codedeploy_app.app.name}-"
  acl           = "private"
  versioning {
    enabled = "true"
  }
  tags = {
    Environment   = var.environment
    orchestration = var.orchestration
    purpose       = "${var.environment}-${aws_codedeploy_app.app.name}-data"
  }
  lifecycle_rule {
    enabled = var.lifecycle_rule_enabled

    expiration {
      days = 120
    }
  }
}
