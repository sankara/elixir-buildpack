build-elixir-stack:
	(cd stacks; ./build-stack.sh elixir)
build-elixir-stack-m1:
	(cd stacks; ./build-stack.sh -p linux/arm64 elixir)
create-elixir-builder:
	(cd builders; pack builder create orbit/elixir:alpine --config elixir/builder.toml)
