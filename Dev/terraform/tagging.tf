resource "aws_config_config_rule" "s3_pii_tag_check" {
  name = "s3-pii-tag-check"
  source {
    owner             = "AWS"
    source_identifier = "S3_BUCKET_TAGGING_ENABLED"
  }

  scope {
    compliance_resource_types = ["AWS::S3::Bucket"]
  }

  input_parameters = jsonencode({
    tag1Key = "PII"
  })

  description = "Ensure S3 buckets are tagged with 'PII'"
}