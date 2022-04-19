variable "COMPONENTS" {
  default = [
    "mongodb",
    "catalogue",
  ]
}

variable "APP_VERSION" {
  default = [
    "null",
    "1.0.0"
  ]
}

variable "ALL_COMPONENTS" {
  default = [
    {
      COMPONENT   = "mongodb",
      APP_VERSION = "null"
    },
    {
      COMPONENT   = "catalogue",
      APP_VERSION = "1.0.0"
    }
  ]
}
