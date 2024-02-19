variable "common_tags" {
    default = {
        project = "roboshop"
        environment = "dev"
        terraform = "true"
    }
}
variable "tags" {
    default = {
        Component = "payment"
    }
}
variable "project_name" {
    default = "roboshop"
}
variable "environment" {
    default = "dev"
}
variable "zone_name" {
    default = "sowjanyaaws.online"
}
variable "iam_instance_profile" {
default = "admin-role"
}