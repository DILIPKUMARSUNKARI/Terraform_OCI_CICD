# main-vars.tf
############################################
# Compartments
############################################

variable "compartment_id" {
  description = "The OCID of the parent compartment where the resources will be created."
  type        = string
}

variable "compartment_name" {
  description = "Compartment Name"
  type        = string
  default     = "cloudquicklabs-compartment"
}

variable "compartment_description" {
  description = "Compartment Description"
  type        = string
  default     = "test-compartment description"
}

############################################
# VCN
############################################

variable "vcn1" {
  description = "The details of VCN1."
  default = {
    cidr_blocks : ["10.23.0.0/20"]
    display_name : "vcn01"
  }
}

############################################
# Public Subnet, Route Table, and Internet Gateway
############################################

variable "subnetA_pub" {
  description = "The details of the subnet"
  default = {
    cidr_block : "10.23.11.0/24"
    display_name : "IC_pub_snet-A"
    is_public : true
    route_table : {
      display_name = "routeTable-Apub"
      description  = "routeTable-Apub"
    }
  }
}

variable "internet_gateway_A" {
  description = "The details of the internet gateway"
  default = {
    display_name : "IC_IG-A"
    ig_destination = "0.0.0.0/0"
  }
}

############################################
# Compute Instance
############################################
variable "ssh_public_key" {
  description = "SSH public key for OCI compute instance"
  type        = string
}


variable "ic_pub_vm_A" {
  description = "The details of the compute instance"
  default = {
    display_name : "IC_pub_vm-A"
    assign_public_ip : true
    availability_domain : "QXJP:AP-HYDERABAD-1-AD-1"
    image_ocid : "ocid1.image.oc1.ap-hyderabad-1.aaaaaaaasujr5npyxygi4qsyrzpd33o4pujvcofmuhkxmyyvdmz33nlkac4q"
    shape : {
      #name          = "VM.Standard.E2.1.Micro"
      name          = "VM.Standard.E2.1.Micro"
      ocpus         = 1
      memory_in_gbs = 1
    }
    #ssh_authorized_keys = file("${path.module}/keys/oci_vm.pub")
    #ssh_authorized_keys = ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDNnbQuTKx235Dj0iOg0sU9E2wb6tAejtg+CILyKQrCY+93tKx31r4TO7/Q0l87SBzV8BMJNBCQDRRO0XyuSNqm4Bm8ZTgzx/g/DoIUxjoCsJ97zWlyqf3slVkS7rZV2bvXvzHRPEjmNtkz0CVBIuOxVC8F4ucp5NEPtnyYcAf4TpUaPEni2lNdEY3+2SWSlEOS8M+5E9t6SQNpPqLDJL4ztau27wDoF8gJrilR/kSwLdFF3YuhuZiIaR1HCiHVtH2qYBsR+MJ9AqcWqekoIplavaxW13Abr5GRt0jGNBDw6iB8PrlwUf5s0qTfWpknaooKRvcxJULuIJAZyY5MZ+t7NL9r5sHde3ewnpVzeJAXdDFIeoNCb6/fNUkO5aZvsigGsaGiswyO1zHQeDNYZ9naqVxzYVAvW87OwQO2h9i9tpxYkLqCj92X/XyDX4MDhU4NvAE7byhRn6ktxZHt7tzdtX+Rk21ohM+LVjnKokB4jUOpeJ2I6xSDEF84vSov3RtITBWDcxt0St3MEesry0L4D/kMe33E/XHp3+IkQvEdYEs2294ldRA8wEYK6zD5RMWWBsC3KnAhVOK7wNJk2TC7rEIsPmhcE+Glqgf6kABXq6klpZVialo1T/ufzwwVVVzrpiZEdMptmqpwsExuR218BkjBo/DB2BuwhMVv02RAiQ== dilip@Dilip_Pradeep"]
  }
}