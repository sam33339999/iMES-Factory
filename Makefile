.PHONY: build

build:
	@echo "Building..."
	@docker buildx build -t imes-webapi:latest -f iMES.Net/iMES.WebApi/Dockerfile ./iMES.Net
	@echo "Build completed."