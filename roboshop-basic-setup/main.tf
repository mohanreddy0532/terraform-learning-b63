//module "component" {
//  count       = length(var.COMPONENTS)
//  source      = "./ec2"
//  COMPONENT   = var.COMPONENTS[count.index]
//  APP_VERSION = var.APP_VERSION[count.index]
//}
//


resource "null_resource" "sample" {
  count = length(var.ALL_COMPONENTS)
  provisioner "local-exec" {
    command = <<EOF
echo COMPONENT = ${lookup(tomap(var.ALL_COMPONENTS[count.index]), COMPONENT, null)}
EOF
  }
}
