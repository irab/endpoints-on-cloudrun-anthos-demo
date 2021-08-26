#!/bin/bash
curl https://raw.githubusercontent.com/GoogleCloudPlatform/esp-v2/master/docker/serverless/gcloud_build_image > gcloud_build_image
chmod +x gcloud_build_image
./gcloud_build_image -s hello-randomcorp.endpoints.ira-sandbox.cloud.goog \
-c 2021-08-26r0 -p ira-sandbox

gcloud run deploy espv2 \
  --image="gcr.io/ira-sandbox/endpoints-runtime-serverless:2.30.1-hello-randomcorp.endpoints.ira-sandbox.cloud.goog-2021-08-26r0" \
  --platform gke \
  --project=ira-sandbox