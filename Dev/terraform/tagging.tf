resource "aws_config_config_rule" "require_pii_tag" {
  name = "require-pii-tag"

  source {
    owner             = "AWS"
    source_identifier = "REQUIRED_TAGS"
  }

  scope {
    compliance_resource_types = ["AWS::S3::Bucket"]
  }

  input_parameters = jsonencode({
    tag1Key = "PII"
  })

  description = "Ensure all S3 buckets are tagged with 'PII'"
}