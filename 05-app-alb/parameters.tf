resource "aws_ssm_parameter" "app_alb_listener_arn" {
  name  = "/${var.project_name}/${var.environment}/app_alb_listener_arn"
  type  = "String"
  value = app_alb_listener_arn.sg_id
}