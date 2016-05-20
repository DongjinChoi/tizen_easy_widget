#Create a bucket. It's common, but not required, to name your bucket after your project ID. The bucket name must be globally unique.
#gsutil mb gs://<your-bucket-name>
gsutil mb gs://tizen-easy-widget-bucket

#Set the ACL to grant read access to items in the bucket.
#gsutil defacl set public-read gs://<your-bucket-name>
gsutil defacl set public-read gs://tizen-easy-widget-bucket

#Upload items to the bucket. The rsync command is typically the fastest and easiest way to upload and update assets. You could also use cp.
#gsutil rsync -mr ./static gs://<your-bucket-name>/static
gsutil -m rsync -r -d ./static gs://tizen-easy-widget-bucket/static

#You can now access your static assets via https://storage.googleapis.com/<your-bucket-name>/static/...





