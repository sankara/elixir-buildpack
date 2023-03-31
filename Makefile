build-elixir-stack:
	(cd stacks; ./build-stack.sh -f "sankara/elixir-stacks" elixir)
build-elixir-stack-m1:
	(cd stacks; ./build-stack.sh -f "sankara/elixir-stacks" -p linux/arm64 elixir)
build-elixir-builder:
	(cd builders; pack builder create sankara/elixir-builder:alpine --config elixir/builder.toml)
build-elixir-buildpack:
	(cd buildpacks/elixir; pack buildpack package sankara/elixir-buildpack:alpine)
build-sample-app:
	(cd sample_phx_app; pack build sample_phx_app --builder orbit/elixir-builder:alpine --buildpack orbit/elixir-buildpack)
