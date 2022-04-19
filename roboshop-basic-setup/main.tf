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
  for_each = var.sample
  provisioner "local-exec" {
    command = <<EOF
echo COMPONENT = ${each.key}, APP_VERSION = ${each.value}
EOF
  }
}
//
//output "sample" {
//  value = [for o in var.ALL_COMPONENTS : o.COMPONENT]
//}

variable "ALL_COMPONENTS" {
  default = {
    app01 = {
      COMPONENT   = "mongodb",
      APP_VERSION = "null"
    },
    app02 = {
      COMPONENT   = "catalogue",
      APP_VERSION = "1.0.0"
    }
  }
}

variable "sample" {
  default = {
    mongodb   = "null"
    catalogue = "1.0.0"
  }
}