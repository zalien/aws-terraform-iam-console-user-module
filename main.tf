resource "aws_iam_user" "user" {
  for_each = var.username
  name     = each.value
  path     = "/"
}

resource "aws_iam_user_login_profile" "user_profile" {
  depends_on = [aws_iam_user.user]
  for_each   = var.username
  user       = each.value
  pgp_key    = var.pgp_key
}
