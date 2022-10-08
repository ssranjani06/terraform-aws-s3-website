# Call our Custom Terraform Module which we built earlier
module "s3-website" {
  source  = "app.terraform.io/ranjani-hcta-demo1/s3-website/aws"
  version = "1.0.4"
  # insert required variables here
  bucket_name = var.my_s3_bucket
  tags = var.my_s3_tags
}
