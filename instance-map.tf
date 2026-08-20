variable "vm_instance_size" {
  description = "size of instance according to env"
  type        = map(string)
  default = {
    "testing"     = "Standard_B1s"    #1 core processor 1 gb ram
    "development" = "Standard_F2"     #2 core processor and 2 GB RAM
    "production"  = "Standard_D2s_v3" #2 core with 8 GB RAM
  }
}