# terraform.tf
terraform {
  required_providers {
    oci = {
      source  = "hashicorp/oci"
      version = ">= 5.0.0"
    }
  }
}


terraform {
  backend "http" {
    #address       = "https://objectstorage.ap-hyderabad-1.oraclecloud.com/p/8163yWk19sbpcLEshS1iIoGxqMGcAhC4BIekXs--ISsGuXbbxFAmXYPyl5fHWIyj/n/axojviqbbs15/b/my_cicd/o/terraform.tfstate"
     address= "https://axojviqbbs15.objectstorage.ap-hyderabad-1.oci.customer-oci.com/n/axojviqbbs15/b/my_cicd/o/terraform.tfstate"
     update_method = "PUT"

  }

}
