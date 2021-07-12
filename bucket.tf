resource "aws_s3_bucket" "demobucket" {
  bucket = var.s3bucket
  
  acl = "public-read"
  versioning {
    enabled = true
  }
  website {
    index_document = "index.html"
  }

  provisioner "local-exec" {
    command = "aws s3 cp ./looplab s3://${var.s3bucket}"
  }
}