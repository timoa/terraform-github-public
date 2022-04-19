<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_github"></a> [github](#requirement\_github) | 4.23.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_terraform_github_public"></a> [terraform\_github\_public](#module\_terraform\_github\_public) | mineiros-io/repository/github | 0.16.0 |
| <a name="module_cdkit_appstore_design"></a> [cdkit\_appstore\_design](#module\_cdkit\_appstore\_design) | mineiros-io/repository/github | 0.16.0 |
| <a name="module_app_stores_prometheus_exporter"></a> [app\_stores\_prometheus\_exporter](#module\_app\_stores\_prometheus\_exporter) | mineiros-io/repository/github | 0.16.0 |
| <a name="module_terraform_module_example"></a> [terraform\_module\_example](#module\_terraform\_module\_example) | mineiros-io/repository/github | 0.16.0 |
| <a name="module_terraform_module_aws_example"></a> [terraform\_module\_aws\_example](#module\_terraform\_module\_aws\_example) | mineiros-io/repository/github | 0.16.0 |
| <a name="module_homelab"></a> [homelab](#module\_homelab) | mineiros-io/repository/github | 0.16.0 |
| <a name="module_terraform_elasticsearch_single_node"></a> [terraform\_elasticsearch\_single\_node](#module\_terraform\_elasticsearch\_single\_node) | mineiros-io/repository/github | 0.16.0 |
| <a name="module_chrome_tab_rotate_server"></a> [chrome\_tab\_rotate\_server](#module\_chrome\_tab\_rotate\_server) | mineiros-io/repository/github | 0.16.0 |
| <a name="module_cdkit_ui_automation"></a> [cdkit\_ui\_automation](#module\_cdkit\_ui\_automation) | mineiros-io/repository/github | 0.16.0 |
| <a name="module_nodejs_encryption_api_example"></a> [nodejs\_encryption\_api\_example](#module\_nodejs\_encryption\_api\_example) | mineiros-io/repository/github | 0.16.0 |
| <a name="module_terraform_module_gcp_example"></a> [terraform\_module\_gcp\_example](#module\_terraform\_module\_gcp\_example) | mineiros-io/repository/github | 0.16.0 |
| <a name="module_cdkit_ansible"></a> [cdkit\_ansible](#module\_cdkit\_ansible) | mineiros-io/repository/github | 0.16.0 |
| <a name="module_terraform_jenkins_slaves_on_demand"></a> [terraform\_jenkins\_slaves\_on\_demand](#module\_terraform\_jenkins\_slaves\_on\_demand) | mineiros-io/repository/github | 0.16.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_branches"></a> [branches](#input\_branches) | (Optional) A list of branches to be created in this repository. | `any` | `[]` | no |
| <a name="input_defaults"></a> [defaults](#input\_defaults) | (Optional) Overwrite defaults for various repository settings | `any` | <pre>{<br>  "allow_auto_merge": false,<br>  "allow_merge_commit": true,<br>  "allow_rebase_merge": true,<br>  "allow_squash_merge": true,<br>  "auto_init": true,<br>  "default_branch": "main",<br>  "delete_branch_on_merge": true,<br>  "gitignore_template": "terraform",<br>  "has_downloads": false,<br>  "has_issues": true,<br>  "has_projects": false,<br>  "has_wiki": false,<br>  "homepage_url": "https://timoa.com",<br>  "license_template": "mit",<br>  "topics": [<br>    "terraform"<br>  ],<br>  "visibility": "public"<br>}</pre> | no |
| <a name="input_pages"></a> [pages](#input\_pages) | (Optional) The repository's GitHub Pages configuration. (Default: {}) | `any` | `null` | no |
| <a name="input_is_template"></a> [is\_template](#input\_is\_template) | (Optional) Whether or not to tell GitHub that this is a template repository. ( Default: false) | `bool` | `false` | no |
| <a name="input_archived"></a> [archived](#input\_archived) | (Optional) Specifies if the repository should be archived. (Default: false) | `bool` | `false` | no |
| <a name="input_extra_topics"></a> [extra\_topics](#input\_extra\_topics) | (Optional) The list of additional topics of the repository. (Default: []) | `list(string)` | `[]` | no |
| <a name="input_template"></a> [template](#input\_template) | (Optional) Template repository to use. (Default: {}) | <pre>object({<br>    owner      = string<br>    repository = string<br>  })</pre> | `null` | no |
| <a name="input_admin_collaborators"></a> [admin\_collaborators](#input\_admin\_collaborators) | (Optional) A list of users to add as collaborators granting them admin (full) permission. | `list(string)` | `[]` | no |
| <a name="input_push_collaborators"></a> [push\_collaborators](#input\_push\_collaborators) | (Optional) A list of users to add as collaborators granting them push (read-write) permission. | `list(string)` | `[]` | no |
| <a name="input_pull_collaborators"></a> [pull\_collaborators](#input\_pull\_collaborators) | (Optional) A list of users to add as collaborators granting them pull (read-only) permission. | `list(string)` | `[]` | no |
| <a name="input_triage_collaborators"></a> [triage\_collaborators](#input\_triage\_collaborators) | (Optional) A list of users to add as collaborators granting them triage permission. | `list(string)` | `[]` | no |
| <a name="input_maintain_collaborators"></a> [maintain\_collaborators](#input\_maintain\_collaborators) | (Optional) A list of users to add as collaborators granting them maintain permission. | `list(string)` | `[]` | no |
| <a name="input_admin_team_ids"></a> [admin\_team\_ids](#input\_admin\_team\_ids) | (Optional) A list of teams (by id) to grant admin (full) permission to. | `list(string)` | `[]` | no |
| <a name="input_push_team_ids"></a> [push\_team\_ids](#input\_push\_team\_ids) | (Optional) A list of teams (by id) to grant push (read-write) permission to. | `list(string)` | `[]` | no |
| <a name="input_pull_team_ids"></a> [pull\_team\_ids](#input\_pull\_team\_ids) | (Optional) A list of teams (by id) to grant pull (read-only) permission to. | `list(string)` | `[]` | no |
| <a name="input_triage_team_ids"></a> [triage\_team\_ids](#input\_triage\_team\_ids) | (Optional) A list of teams (by id) to grant triage permission to. | `list(string)` | `[]` | no |
| <a name="input_maintain_team_ids"></a> [maintain\_team\_ids](#input\_maintain\_team\_ids) | (Optional) A list of teams (by id) to grant maintain permission to. | `list(string)` | `[]` | no |
| <a name="input_admin_teams"></a> [admin\_teams](#input\_admin\_teams) | (Optional) A list of teams (by name/slug) to grant admin (full) permission to. | `list(string)` | `[]` | no |
| <a name="input_push_teams"></a> [push\_teams](#input\_push\_teams) | (Optional) A list of teams (by name/slug) to grant push (read-write) permission to. | `list(string)` | `[]` | no |
| <a name="input_pull_teams"></a> [pull\_teams](#input\_pull\_teams) | (Optional) A list of teams (by name/slug) to grant pull (read-only) permission to. | `list(string)` | `[]` | no |
| <a name="input_triage_teams"></a> [triage\_teams](#input\_triage\_teams) | (Optional) A list of teams (by name/slug) to grant triage permission to. | `list(string)` | `[]` | no |
| <a name="input_maintain_teams"></a> [maintain\_teams](#input\_maintain\_teams) | (Optional) A list of teams (by name/slug) to grant maintain permission to. | `list(string)` | `[]` | no |
| <a name="input_branch_protections"></a> [branch\_protections](#input\_branch\_protections) | DEPRECATED: use branch\_protections\_v3 instead. Default is []. | `any` | `null` | no |
| <a name="input_branch_protections_v3"></a> [branch\_protections\_v3](#input\_branch\_protections\_v3) | (Optional) A list of branch protections to apply to the repository. Default is [] unless branch\_protections is set. | `any` | `null` | no |
| <a name="input_issue_labels_merge_with_github_labels"></a> [issue\_labels\_merge\_with\_github\_labels](#input\_issue\_labels\_merge\_with\_github\_labels) | (Optional) Specify if you want to merge and control githubs default set of issue labels. | `bool` | `null` | no |
| <a name="input_issue_labels_create"></a> [issue\_labels\_create](#input\_issue\_labels\_create) | (Optional) Specify whether you want to force or suppress the creation of issues labels. | `bool` | `null` | no |
| <a name="input_issue_labels"></a> [issue\_labels](#input\_issue\_labels) | (Optional) Configure a GitHub issue label resource. | <pre>list(object({<br>    name        = string<br>    description = string<br>    color       = string<br>  }))</pre> | `[]` | no |
| <a name="input_deploy_keys"></a> [deploy\_keys](#input\_deploy\_keys) | (Optional) Configure a deploy key ( SSH key ) that grants access to a single GitHub repository. This key is attached directly to the repository instead of to a personal user account. | `any` | `[]` | no |
| <a name="input_deploy_keys_computed"></a> [deploy\_keys\_computed](#input\_deploy\_keys\_computed) | (Optional) Configure a deploy key ( SSH key ) that grants access to a single GitHub repository. This key is attached directly to the repository instead of to a personal user account. | `any` | `[]` | no |
| <a name="input_projects"></a> [projects](#input\_projects) | (Optional) Create and manage projects for GitHub repository. | <pre>list(object({<br>    name = string<br>    body = string<br>  }))</pre> | `[]` | no |
| <a name="input_webhooks"></a> [webhooks](#input\_webhooks) | (Optional) Configuring webhooks. For details please check: https://www.terraform.io/docs/providers/github/r/repository_webhook.html | `any` | `[]` | no |
| <a name="input_plaintext_secrets"></a> [plaintext\_secrets](#input\_plaintext\_secrets) | (Optional) Configuring actions secrets. For details please check: https://www.terraform.io/docs/providers/github/r/actions_secret | `map(string)` | `{}` | no |
| <a name="input_encrypted_secrets"></a> [encrypted\_secrets](#input\_encrypted\_secrets) | (Optional) Configuring encrypted actions secrets. For details please check: https://www.terraform.io/docs/providers/github/r/actions_secret | `map(string)` | `{}` | no |
| <a name="input_autolink_references"></a> [autolink\_references](#input\_autolink\_references) | (Optional) Configuring autolink references. For details please check: https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_autolink_reference | <pre>list(object({<br>    key_prefix          = string<br>    target_url_template = string<br>  }))</pre> | `[]` | no |
| <a name="input_vulnerability_alerts"></a> [vulnerability\_alerts](#input\_vulnerability\_alerts) | (Optional) Set to `false` to disable security alerts for vulnerable dependencies. Enabling requires alerts to be enabled on the owner level. | `bool` | `true` | no |
| <a name="input_archive_on_destroy"></a> [archive\_on\_destroy](#input\_archive\_on\_destroy) | (Optional) Set to `false` to not archive the repository instead of deleting on destroy. | `string` | `true` | no |
| <a name="input_module_depends_on"></a> [module\_depends\_on](#input\_module\_depends\_on) | (Optional) Define resources this module indirectly depends\_on. | `any` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->