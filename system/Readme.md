# Local Openshift - Demo

**Link:** https://openliberty.io/guides/openshift-codeready-containers.html

## Commands

### Initial Setup
```shell
# Clone repo and checkout branch
git clone https://github.com/jacobnelmark36/guide-openshift-local-crc.git
cd guide-openshift-local-crc
git checkout dev

# OpenShift Local Setup Commands
eval $(crc podman-env)
eval $(crc oc-env)
oc get co
oc config set-context crc-developer
oc new-project my-project
```

### App Build Image / Push to OpenShift Registry
```shell
# Build app image
cd system
podman build -t system:1.0-SNAPSHOT .
podman images

# Login to OpenShift Local internal repo
oc registry login --insecure=true
oc registry info

# Push image to OpenShift Local internal repo
podman tag system:1.0-SNAPSHOT $(oc registry info)/$(oc project -q)/system:1.0-SNAPSHOT
podman push $(oc registry info)/$(oc project -q)/system:1.0-SNAPSHOT
oc get imagestream
```

### App Deployment to OpenShift Local
#### Kubernetes Manifest File
```shell
# Deploy app using oc
oc apply -f kubernetes.yaml
```

#### Helm Chart
```shell
# Deploy app using helm
helm upgrade system-app system-chart/ -i -n my-project -f helm-deploy-values.yaml --wait --timeout 10m
```

### Check App Deployment
```shell
oc get deploy
oc get pods
oc get service
oc get routes
```

#### Kubernetes Manifest File - App Endpoint
http://system-route-my-project.apps-crc.testing/system/properties

#### Helm - Check Install - App Endpoint
```shell
helm list -n my-project
helm history system-app -n my-project
```
http://system-app-system-chart-my-project.apps-crc.testing/system/properties

### Tear Down
#### Kubernetes Manifest File
```shell
# Delete app using oc
oc delete -f kubernetes.yaml
```

#### Helm Chart
```shell
# Delete app using helm
helm uninstall system-app -n my-project
```