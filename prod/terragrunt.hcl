
remote_state {
    backend = "s3"
    config = {
        bucket  = "terraform-state.intimidatingbits.com"
        key     = "${path_relative_to_include()}/terraform.tfstate"
        region  = "us-east-2"
        profile = "tf-state-user"

        dynamodb_table = "terraform-state-locks"
        encrypt        = true
    }
}

terraform {
    extra_arguments "common_vars" {
        commands = ["plan", "apply", "destroy"]

        arguments = [
            "-var-file=../region.tfvars",
            "-var-file=../../common.tfvars"
        ]
    }
}
