resource "aws_eip" "this" {
  vpc = true
  tags = var.tags
}