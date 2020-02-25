output "user" {
  value = [for user in aws_iam_user_login_profile.user_profile : user]
}
