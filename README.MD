# Demo Setup

Following this: https://cloud.google.com/endpoints/docs/openapi/get-started-cloud-run-anthos

Need to run the following before terraform apply:

```
gcloud auth application-default login
``` 

To get the Endpoints service id:
```
gcloud endpoints configs list --service hello-randomcorp.endpoints.ira-sandbox.cloud.goog
```

Target IP for OpenAPI spec is the IP of the ingress gateway

Domain Mapping for Service is done manually, see here: https://cloud.google.com/endpoints/docs/openapi/get-started-cloud-run-anthos#creating_a_domain_mapping_to_theservice

Developer Portal is created here: https://console.cloud.google.com/endpoints/v2/portal/create?project=ira-sandbox