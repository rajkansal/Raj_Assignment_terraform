
resource "local_file" "file1" {
  content = var.string_var
  filename = "${path.module}/folder1/string"
}


resource "random_id" "rd" {
  byte_length = 10
}

resource "local_file" "file4" {
  content = var.map_var.key3
  filename = "${path.module}/folder2/map"
}

resource "local_file" "file2" {
  content = var.number_var
  filename = "${path.module}/folder1/number"
}

resource "local_file" "file3" {
  content = var.list_var[0]
  filename = "${path.module}/folder2/list"
}

resource "local_file" "file5" {
  content = var.object_var.name
  filename = "${path.module}/folder3/object"
}

resource "random_id" "server" {
  keepers = {
    ami_id = var.ami_id
  }

  byte_length = 8
}

locals {
  string_variable = var.string_var
  number_variable = var.number_var
  list_variable   = var.list_var
  map_variable    = var.map_var
  object_variable = var.object_var
}