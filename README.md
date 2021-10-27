# Eclipse Che & OpenShift Demo

Pre-Reqs:
- OpenShift cluster on IBM Cloud
- GitHub repo w/application
- Install Eclipse Che on OpenShift Cluster: https://www.eclipse.org/che/docs/che-7/installation-guide/installing-che/

1. Add repo to Eclipse Che
2. Deploy application to OpenShift project via source2image
3. Make change to application (add vi) in Eclipse Che
4. Rebuild image w/source2image and rollout
5. Show that new pod has Vi
6. Roll back to previous image version
