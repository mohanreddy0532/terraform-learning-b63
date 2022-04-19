//module "component" {
//  count       = length(var.COMPONENTS)
//  source      = "./ec2"
//  COMPONENT   = var.COMPONENTS[count.index]
//  APP_VERSION = var.APP_VERSION[count.index]
//}
//


resource "null_resource" "sample" {
  triggers = {
    abc = timestamp()
  }
  count = length(var.ALL_COMPONENTS)
  provisioner "local-exec" {
    command = <<EOF
echo COMPONENT = ${for o in var.ALL_COMPONENTS[count.index] : o.COMPONENT}
EOF
  }
}
//
//output "sample" {
//  value = [for o in var.ALL_COMPONENTS : o.COMPONENT]
//}
