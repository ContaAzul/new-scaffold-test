install:
	pip install --upgrade pip
	pip install keyring keyrings.google-artifactregistry-auth
	pip install \
		-r requirements.dev.txt \
		-r requirements.txt
.PHONY: install

check-format:
	black --check src
	black --check tests
.PHONY: check-format

format:
	black src
	black tests
.PHONY: format

test:
	python -m pytest tests
.PHONY: test
