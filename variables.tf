variable "github_token" {
  type        = string
  description = "GitHub Token. Can be set with TF_VAR_github_token"
}

variable "branches" {
  description = "(Optional) A list of branches to be created in this repository."
  type        = any
  # type = list(object({
  #   name          = string
  #   source_branch = optional(string)
  #   source_sha    = optional(string)
  # }))
  default = []
}

variable "defaults" {
  description = "(Optional) Overwrite defaults for various repository settings"
  type        = any
  default = {
    homepage_url           = "https://timoa.com/"
    visibility             = "public"
    has_issues             = true
    has_projects           = false
    has_wiki               = false
    delete_branch_on_merge = true
    allow_merge_commit     = true
    allow_rebase_merge     = true
    allow_squash_merge     = true
    allow_auto_merge       = false
    has_downloads          = false
    auto_init              = true
    gitignore_template     = "terraform"
    license_template       = "mit"
    default_branch         = "main"
    topics                 = ["terraform"]
  }
}

variable "pages" {
  description = "(Optional) The repository's GitHub Pages configuration. (Default: {})"
  # type = object({
  # branch = string
  # path   = string
  # cname  = string
  # })
  type    = any
  default = null
}

variable "is_template" {
  description = "(Optional) Whether or not to tell GitHub that this is a template repository. ( Default: false)"
  type        = bool
  default     = false
}

variable "archived" {
  description = "(Optional) Specifies if the repository should be archived. (Default: false)"
  type        = bool
  default     = false
}

variable "extra_topics" {
  description = "(Optional) The list of additional topics of the repository. (Default: [])"
  type        = list(string)
  default     = []
}

variable "template" {
  description = "(Optional) Template repository to use. (Default: {})"
  type = object({
    owner      = string
    repository = string
  })
  default = null
}

variable "admin_collaborators" {
  description = "(Optional) A list of users to add as collaborators granting them admin (full) permission."
  type        = list(string)
  default     = []
}

variable "push_collaborators" {
  description = "(Optional) A list of users to add as collaborators granting them push (read-write) permission."
  type        = list(string)
  default     = []
}

variable "pull_collaborators" {
  description = "(Optional) A list of users to add as collaborators granting them pull (read-only) permission."
  type        = list(string)
  default     = []
}

variable "triage_collaborators" {
  description = "(Optional) A list of users to add as collaborators granting them triage permission."
  type        = list(string)
  default     = []
}

variable "maintain_collaborators" {
  description = "(Optional) A list of users to add as collaborators granting them maintain permission."
  type        = list(string)
  default     = []
}

variable "admin_team_ids" {
  description = "(Optional) A list of teams (by id) to grant admin (full) permission to."
  type        = list(string)
  default     = []
}

variable "push_team_ids" {
  description = "(Optional) A list of teams (by id) to grant push (read-write) permission to."
  type        = list(string)
  default     = []
}

variable "pull_team_ids" {
  description = "(Optional) A list of teams (by id) to grant pull (read-only) permission to."
  type        = list(string)
  default     = []
}

variable "triage_team_ids" {
  description = "(Optional) A list of teams (by id) to grant triage permission to."
  type        = list(string)
  default     = []
}

variable "maintain_team_ids" {
  description = "(Optional) A list of teams (by id) to grant maintain permission to."
  type        = list(string)
  default     = []
}

variable "admin_teams" {
  description = "(Optional) A list of teams (by name/slug) to grant admin (full) permission to."
  type        = list(string)
  default     = []
}

variable "push_teams" {
  description = "(Optional) A list of teams (by name/slug) to grant push (read-write) permission to."
  type        = list(string)
  default     = []
}

variable "pull_teams" {
  description = "(Optional) A list of teams (by name/slug) to grant pull (read-only) permission to."
  type        = list(string)
  default     = []
}

variable "triage_teams" {
  description = "(Optional) A list of teams (by name/slug) to grant triage permission to."
  type        = list(string)
  default     = []
}

variable "maintain_teams" {
  description = "(Optional) A list of teams (by name/slug) to grant maintain permission to."
  type        = list(string)
  default     = []
}

variable "branch_protections" {
  description = "DEPRECATED: use branch_protections_v3 instead. Default is []."
  type        = any
  default     = null
}

variable "branch_protections_v3" {
  description = "(Optional) A list of branch protections to apply to the repository. Default is [] unless branch_protections is set."
  type        = any

  # We can't use a detailed type specification due to a terraform limitation. However, this might be changed in a future
  # Terraform version. See https://github.com/hashicorp/terraform/issues/19898 and https://github.com/hashicorp/terraform/issues/22449
  #
  # type = list(object({
  #   branch                 = string
  #   enforce_admins         = bool
  #   require_signed_commits = bool
  #   required_status_checks = object({
  #     strict   = bool
  #     contexts = list(string)
  #   })
  #   required_pull_request_reviews = object({
  #     dismiss_stale_reviews           = bool
  #     dismissal_users                 = list(string)
  #     dismissal_teams                 = list(string)
  #     require_code_owner_reviews      = bool
  #     required_approving_review_count = number
  #   })
  #   restrictions = object({
  #     users = list(string)
  #     teams = list(string)
  #   })
  # }))

  default = null

  # Example:
  # branch_protections = [
  #   {
  #     branch                 = "main"
  #     enforce_admins         = true
  #     require_signed_commits = true
  #
  #     required_status_checks = {
  #       strict   = false
  #       contexts = ["ci/travis"]
  #     }
  #
  #     required_pull_request_reviews = {
  #       dismiss_stale_reviews           = true
  #       dismissal_users                 = ["user1", "user2"]
  #       dismissal_teams                 = ["team-slug-1", "team-slug-2"]
  #       require_code_owner_reviews      = true
  #       required_approving_review_count = 1
  #     }
  #
  #     restrictions = {
  #       users = ["user1"]
  #       teams = ["team-slug-1"]
  #     }
  #   }
  # ]
}

variable "issue_labels_merge_with_github_labels" {
  description = "(Optional) Specify if you want to merge and control githubs default set of issue labels."
  type        = bool
  default     = null
}

variable "issue_labels_create" {
  description = "(Optional) Specify whether you want to force or suppress the creation of issues labels."
  type        = bool
  default     = null
}

variable "issue_labels" {
  description = "(Optional) Configure a GitHub issue label resource."
  type = list(object({
    name        = string
    description = string
    color       = string
  }))

  # Example:
  # issue_labels = [
  #   {
  #     name        = "WIP"
  #     description = "Work in Progress..."
  #     color       = "d6c860"
  #   },
  #   {
  #     name        = "another-label"
  #     description = "This is a lable created by Terraform..."
  #     color       = "1dc34f"
  #   }
  # ]

  default = []
}

variable "deploy_keys" {
  description = "(Optional) Configure a deploy key ( SSH key ) that grants access to a single GitHub repository. This key is attached directly to the repository instead of to a personal user account."
  type        = any

  # Example:
  # deploy_keys = [
  #   {
  #     title     = "CI User Deploy Key"
  #     key       = "ssh-rsa AAAAB3NzaC1yc2...."
  #     read_only = true
  #   },
  #   {
  #     title     = "Test Key"
  #     key       = "ssh-rsa AAAAB3NzaC1yc2...."
  #     read_only = false
  #   }
  # ]

  default = []
}

variable "deploy_keys_computed" {
  description = "(Optional) Configure a deploy key ( SSH key ) that grants access to a single GitHub repository. This key is attached directly to the repository instead of to a personal user account."
  type        = any

  # Example:
  # deploy_keys_computed = [
  #   {
  #     title     = "CI User Deploy Key"
  #     key       = computed.resource
  #     read_only = true
  #   }
  # ]

  default = []
}

variable "projects" {
  description = "(Optional) Create and manage projects for GitHub repository."
  type = list(object({
    name = string
    body = string
  }))

  # Example:
  # projects = [
  #   {
  #     name = "Testproject"
  #     body = "This is a fancy test project for testing"
  #   }
  # ]

  default = []
}

variable "webhooks" {
  description = "(Optional) Configuring webhooks. For details please check: https://www.terraform.io/docs/providers/github/r/repository_webhook.html"
  type        = any

  # We can't use a detailed type specification due to a terraform limitation. However, this might be changed in a future
  # Terraform version. See https://github.com/hashicorp/terraform/issues/19898 and https://github.com/hashicorp/terraform/issues/22449
  #
  # type = list(object({
  #   name         = string
  #   active       = bool
  #   events       = list(string)
  #   url          = string
  #   content_type = string
  #   insecure_ssl = bool
  #   secret       = string
  # }))

  default = []

  # Example:
  # webhooks = [{
  #   active = false
  #   events = ["issues"]
  #   url          = "https://google.de/"
  #   content_type = "form"
  #   insecure_ssl = false
  # }]
}

variable "plaintext_secrets" {
  description = "(Optional) Configuring actions secrets. For details please check: https://www.terraform.io/docs/providers/github/r/actions_secret"
  type        = map(string)
  default     = {}
}

variable "encrypted_secrets" {
  description = "(Optional) Configuring encrypted actions secrets. For details please check: https://www.terraform.io/docs/providers/github/r/actions_secret"
  type        = map(string)
  default     = {}
}


variable "autolink_references" {
  description = "(Optional) Configuring autolink references. For details please check: https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_autolink_reference"
  type = list(object({
    key_prefix          = string
    target_url_template = string
  }))

  # Example:
  # autolink_references = [
  #   {
  #     key_prefix          = "TICKET-"
  #     target_url_template = "https://hello.there/TICKET?query=<num>"
  #   }
  # ]

  default = []
}

variable "vulnerability_alerts" {
  type        = bool
  description = "(Optional) Set to `false` to disable security alerts for vulnerable dependencies. Enabling requires alerts to be enabled on the owner level."
  default     = null
}

variable "archive_on_destroy" {
  type        = string
  description = "(Optional) Set to `false` to not archive the repository instead of deleting on destroy."
  default     = true
}

# ------------------------------------------------------------------------------
# MODULE CONFIGURATION PARAMETERS
# These variables are used to configure the module.
# ------------------------------------------------------------------------------

variable "module_depends_on" {
  type        = any
  description = "(Optional) Define resources this module indirectly depends_on."
  default     = []
}
