resource "aws_s3_bucket" "team_bucket" {
  bucket = "${var.team_name}-${var.environment}-bucket"


  tags = {
    Name = "${var.team_name}-${var.environment}-bucket"
    # team        = var.team_name
    # environment = var.environment
  }
}
