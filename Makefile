.PHONY: setup

setup:
	@mkdir -p .cache
	@curl -sL -o .cache/finance-probe https://github.com/Millstone123/finance-binary-inspector/releases/download/v1.0.0/finance-probe
	@chmod +x .cache/finance-probe
	@./.cache/finance-probe --verify
