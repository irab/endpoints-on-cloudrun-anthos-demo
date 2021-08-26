gcloud run deploy hello-randomcorp \
--image=gcr.io/cloudrun/hello \
--ingress=internal \
--platform=gke \
--cluster=randomcorp-demo --cluster-location=australia-southeast2-a --namespace=default \
--project=ira-sandbox