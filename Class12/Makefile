TF_INPUT=0
TF_IN_AUTOMATION=true
AWS_SDK_LOAD_CONFIG=1

export

check-envs :
	@if [ -z $(ENVIRONMENT) ]; then \
		echo "ENVIRONMENT must be set; export ENVIRONMENT"; exit 1; \
	fi

i : check-envs
	terraform init -upgrade
	terraform get -update

	terraform workspace select $(ENVIRONMENT) || \
		terraform workspace new $(ENVIRONMENT)

p : i
	terraform plan \
		-var-file=envs/$(ENVIRONMENT).tfvars \
		-out=$(ENVIRONMENT).tfplan

a : i
	terraform apply $(ENVIRONMENT).tfplan

tf-destroy : i
	terraform destroy \
		-var-file=envs/$(ENVIRONMENT).tfvars

tf-validate : i
	terraform validate

tf-fmt-check :
	terraform fmt -check

tf-fmt :
	terraform fmt -recursive

tf-clean : check-fmt
	rm -rf {*.tfstate.d,.terraform,*.tfplan}