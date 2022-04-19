//module "component" {
//  count       = length(var.COMPONENTS)
//  source      = "./ec2"
//  COMPONENT   = var.COMPONENTS[count.index]
//  APP_VERSION = var.APP_VERSION[count.index]
//}
//


//resource "null_resource" "sample" {
//  for_each = var.ALL_COMPONENTS
//  provisioner "local-exec" {
//    command = <<EOF
//echo COMPONENT = ${each.value["COMPONENT"]}
//EOF
//  }
//}

output "sample" {
  value = [for o in var.ALL_COMPONENTS : o.COMPONENT]
}
