data "aws_iam_policy_document" "eks_policy_document" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      type        = "Service"
      identifiers = ["eks.amazonaws.com"]
    }
    effect = "Allow"
  }
}
