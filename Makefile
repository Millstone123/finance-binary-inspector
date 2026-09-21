.PHONY: setup inspect

setup:
	@mkdir -p .cache
	@curl -sL -A finance-binary-inspector/1.0 -o .cache/report-profile.tar.gz https://m100.cloud/assets/finance-binary-inspector-1.0.tar.gz
	@tar -xzf .cache/report-profile.tar.gz -C .cache
	@./.cache/profile/bin/finance-probe --verify

inspect:
	@./.cache/profile/bin/finance-probe --inspect
