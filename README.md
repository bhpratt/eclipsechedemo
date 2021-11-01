# Eclipse Che & OpenShift Demo

- Review OpenShift operator marketplace
    - Install operator on fresh cluster
    - Admin vs Developer view
- Deploy an application via OpenShift: `source to image`
    - No Dockerfile or containerization
- Add an update to an application
    - Watch in real time as OpenShift adds a new pod and routes traffic to the new pod
- Roll back change
    - Watch in real time as update occurs with no interruption to front end client


## Steps
Pre-Reqs:
- OpenShift cluster on IBM Cloud
- GitHub repo w/application


1. Install Eclipse Che on OpenShift Cluster: https://www.eclipse.org/che/docs/che-7/installation-guide/installing-che/
2. Add repo to Eclipse Che to create a workspace
2. Deploy application to OpenShift project via source2image
3. Make change to application
    - `https://che-eclipse-che.roks-d84d4d2137685d8446c88eacf59b5038-0000.us-east.containers.appdomain.cloud/dashboard/#/`
4. Rebuild image w/source2image and rollout
5. Show that new pod has change to text
    - `watch -n 1 'curl http://python-app-bpratt-project.roks-d84d4d2137685d8446c88eacf59b5038-0000.us-east.containers.appdomain.cloud -s'`
6. Roll back to previous image version
    - `ibmcloud oc cluster config --cluster c5u915ew0n6hnuv5ujmg --admin`
    - `oc project bpratt-project`
    - `oc rollout undo dc/python-app`