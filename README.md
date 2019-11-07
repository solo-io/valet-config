# valet-config

This repo contains a bunch of applications, workflows, and cluster definitions that Valet can run / ensure. 

## Setup 

* Clone `github.com/solo-io/valet` (go mod project)
* `cd` into the `valet` directory and run `make build TAGGED_VERSION=$(git describe --tags)`
* Move `_output/valet` to your `PATH`
* Run `valet --version` to verified it is installed correctly
* Clone `github.com/solo-io/valet-config` 
* `cd` into the `valet-config` directory

Now you can run `valet` against these configurations. For instance, use:

`valet ensure -f registry/workflows/regression/path-matching.yaml` to run the prefix, exact, and regex match workflows against your Gloo cluster. 
