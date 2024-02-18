variable "group_name" {
    description = "The name of the user group to be created"
    type        = string
}

variable "managed_polocies_to_attach" {
    description = " List of aws managed policies to be attached to the user group"
    type        = list(any)
}

variable "policy_name" {
    description 
}

