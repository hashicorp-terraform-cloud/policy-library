import "module" "tfstate-functions" {
    source = "git::https://github.com/hashicorp-terraform-cloud/terraform-sentinel-policies//common-functions//tfstate-functions/tfstate-functions.sentinel"
}

import "module" "tfconfig-functions" {
    source = "git::https://github.com/hashicorp-terraform-cloud/terraform-sentinel-policies//common-functions//tfconfig-functions/tfconfig-functions.sentinel"
}

// mandatory enforcement level
policy "prohibited-local-exec-commands" {
    source = "./terraform/prohibited-local-exec-commands.sentinel"
    enforcement_level = "hard-mandatory"
}

policy "prohibited-azure-machine-types" {
    source = "./terraform/prohibited-azure-machine-types.sentinel"
    enforcement_level = "soft-mandatory"
}

policy "workspace-limit-resources" {
    source = "./terraform/workspace-limit-resources.sentinel"
    enforcement_level = "soft-mandatory"
}

// advisory enforcement level
policy "prohibited-providers-in-config" {
    source = "./terraform/prohibited-providers-in-config.sentinel"
    enforcement_level = "advisory"
}