variable "list_var" {
  type    = list
  default = ["Raj", "Cloudeq"]
}

variable "string_var" {
  type    = string
  default = "RajKansal"
}

variable "object_var" {
  type = object({
    name    = string
    age     = number
    address = string
  })
  default = {
    name    = "Raj Kansal"
    age     = 21
    address = "Cloudeq"
  }
}


variable "map_var" {
  type = map(string)
  default = {
    key1 = "Raj"
    key3 = "Kansal"
  }
}


variable "number_var" {
  type    = number
  default = 200
}

variable "ami_id" {
  type = string
}