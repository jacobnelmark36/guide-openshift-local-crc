# Doc Links

## Hybrid Console
https://console.redhat.com/openshift/create/local

## OpenShift Local Doc
https://docs.redhat.com/en/documentation/red_hat_openshift_local/2.40/

## Podman OpenShift Local Extension Docs
https://podman-desktop.io/docs/openshift/openshift-local

### Start Up Commands
```shell
eval $(crc podman-env)
eval $(crc oc-env)
crc console --credentials
oc login -u developer -p developer https://api.crc.testing:6443
oc registry login --insecure=true
oc registry info
```

### More Commands
```shell
oc config use-context crc-admin
oc get co
oc new-project my-project
oc get imagestream
```
