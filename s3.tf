terraform {
 backend "s3" {
   bucket = "dj-w7-terraformstatebucket" # replace with your bucket
   key    = "docker/terraform.tfstate"
   region = "us-east-1"
   #use_lockfile = true
 }
}