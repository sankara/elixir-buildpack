build-elixir-stack:
	(cd stacks; ./build-stack.sh elixir)
build-elixir-stack-m1:
	(cd stacks; ./build-stack.sh -p linux/arm64 elixir)
build-elixir-builder:
	(cd builders; pack builder create orbit/elixir-builder:alpine --config elixir/builder.toml)
build-sample-app:
	(cd sample_phx_app; pack build sample_phx_app --builder orbit/elixir-builder:alpine --buildpack orbit/elixir-buildpack)
