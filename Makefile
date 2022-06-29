.DEFAULT_GOAL := server clean_secrets decrypt encrypt init plan apply
.PHONY: server

ifndef AWS_SESSION_TOKEN
  $(error Not logged in, please run 'awsume')
endif

server:
	@cd src; HUGO_MODULE_REPLACEMENTS="github.com/melvyndekort/dracula-hugo-theme -> ../../../dracula-hugo-theme" hugo server -D

clean_secrets:
	@rm -f secrets.yaml

decrypt: clean_secrets
	@aws kms decrypt \
		--ciphertext-blob $$(cat terraform/secrets.yaml.encrypted) \
		--output text \
		--query Plaintext \
		--encryption-context target=cheatsheets | base64 -d > terraform/secrets.yaml

encrypt:
	@aws kms encrypt \
		--key-id alias/generic \
		--plaintext fileb://terraform/secrets.yaml \
		--encryption-context target=cheatsheets \
		--output text \
		--query CiphertextBlob > terraform/secrets.yaml.encrypted
	@rm -f secrets.yaml

init: clean_secrets
	@cd terraform && terraform init -upgrade

plan: init
	@cd terraform && terraform plan

apply: init
	@cd terraform && terraform apply
