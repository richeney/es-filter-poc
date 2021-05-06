variable "archetype" {
  type = object({
    policy_assignments     = list(string)
    policy_definitions     = list(string)
    policy_set_definitions = list(string)
    role_definitions       = list(string)
    archetype_config = object({
      parameters     = map(any)
      access_control = map(any)
    })
  })
}

variable "archetype_filter" {

  type = object({
    add_policy_assignments        = list(string)
    add_policy_definitions        = list(string)
    add_policy_set_definitions    = list(string)
    add_role_definitions          = list(string)
    remove_policy_assignments     = list(string)
    remove_policy_definitions     = list(string)
    remove_policy_set_definitions = list(string)
    remove_role_definitions       = list(string)
  })

  default = {
    add_policy_assignments        = null
    add_policy_definitions        = null
    add_policy_set_definitions    = null
    add_role_definitions          = null
    remove_policy_assignments     = null
    remove_policy_definitions     = null
    remove_policy_set_definitions = null
    remove_role_definitions       = null
  }
}
