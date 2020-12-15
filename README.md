# Nx Private Cloud on OpenShift

Supervisor config files are extracted from original `nxprivatecloud/nxcloud` image by running `docker export`.

OpenShift works with dynamic UIDs - https://www.openshift.com/blog/a-guide-to-openshift-and-uids. Also, these is no root access.
This requires certain changes to original configuration:
* drop usage of hardcoded user IDs, i.e. `mongodb`
* make sure supervisor files are owned (or have proper access rights) for current user (non-root)

## Getting started

* build Dockerfile
* tag and push to registry of your choice
* set registry in deployment.yaml
* apply deployment.yaml `oc apply --filename deployment.yaml`
* setup missing part on OpenShift - persistent volume claim, service, route and secrets

## Todo
* Create proper OpenShift template to be able to `oc new-app --template=nxcloud`