#WIP: Elixir buildpack

What works:
1. Basic mix commands
2. M1 mac support
3. Build
4. Epinio build also works now
5. Layering seem to work

What's missing:
1. Add Procfile support to the builder. Although this is not required for the buildpack itself.
4. Better documentation
6. build and push should be scripted with prefix, platform and tag configurable

### Step 1: Create the stack
Non-ARM64/Apple Silicon: `make build-elixir-stack`

ARM64/Apple Silicon: `make build-elixir-stack-1`

### Step 2: Create the buildpack image
`make build-elixir-buildpack`

### Step 3: Create the builder
`make build-elixir-builder`

### Step 4: Use the builder to build the sample app
`make build-sample-app`

### Step 5: Build your own app

`pack build <image-name> --builder orbit/elixir:alpine --buildpack orbit/elixir-buildpack`

E.g. for helios (inside helios dir),

`pack build helios --builder orbit/elixir:alpine --buildpack orbit/elixir-buildpack`

~~Epinio fails with 
```
buildpack ERROR: failed to export: get run image top layer SHA: image "registry.epinio.svc.cluster.local:5000/apps/workspace-helios:2b629cb8ee6d8e6e" has no layers
```
~~
