 variable "instance" {
  type = map(string)
  default = {
    "vm001" = "vm1"
    "vm002" = "vm2" 
  }
}