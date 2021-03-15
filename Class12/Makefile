TF_INPUT=0
TF_IN_AUTOMATION=true
AWS_SDK_LOAD_CONFIG=1

export

check-envs :
	@if [ -z $(ENVIRONMENT) ]; then \
		echo "ENVIRONMENT must be set; export ENVIRONMENT"; exit 1; \
	fi

tf-init : check-envs
	terraform init -upgrade
	terraform get -update

	terraform workspace select $(ENVIRONMENT) || \
		terraform workspace new $(ENVIRONMENT)

tf-plan : tf-init
	terraform plan \
		-var-file=envs/$(ENVIRONMENT).tfvars \
		-out=$(ENVIRONMENT).tfplan

tf-apply : tf-init
	terraform apply $(ENVIRONMENT).tfplan

tf-destroy : tf-init
	terraform destroy \
		-var-file=envs/$(ENVIRONMENT).tfvars

tf-validate : tf-init
	terraform validate

tf-fmt-check :
	terraform fmt -check

tf-fmt :
	terraform fmt -recursive

tf-clean : check-fmt
	rm -rf {*.tfstate.d,.terraform,*.tfplan}