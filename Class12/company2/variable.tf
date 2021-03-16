variable "config" {
  type = map(any)
  default = {
    environment       = "dev"
    s3_bucket         = "backend-state-farrukh"  #Will be used to set backend.tf
    s3_folder_project = "application"            #Will be used to set backend.tf
    s3_folder_region  = "us-east-1"              #Will be used to set backend.tf
    s3_folder_type    = "sharedtools"            #Will be used to set backend.tf
    s3_tfstate_file   = "infrastructure.tfstate" #Will be used to set backend.tf
    region        = "us-east-1"
  }
}
