resource "github_repository" "infrastructure_modules" {
  name        = "this-infrastructure-modules"
  description = "`this` infrastructure modules for ${var.organization_name}/infrastructure-modules"
  visibility  = "public"
  auto_init   = "false"
  archive_on_destroy = "false"
  delete_branch_on_merge = "true"
  allow_auto_merge = "true"
  allow_merge_commit = "false"
  allow_squash_merge = "false"
}

resource "github_actions_secret" "release_please_token_infrastructure_modules" {
  repository       = github_repository.infrastructure_modules.name
  secret_name      = "release_please_token"
  plaintext_value  = var.release_please_token
}

resource "github_repository" "infrastructure_live" {
  name        = "this-infrastructure-live"
  description = "`this` infrastructure live for ${var.organization_name}/infrastructure-live"
  visibility  = "private"
  auto_init   = "false"
  archive_on_destroy = "false"
  delete_branch_on_merge = "true"
  allow_auto_merge = "true"
  allow_merge_commit = "false"
  allow_squash_merge = "false"
}

resource "github_actions_secret" "release_please_token_infrastructure_live" {
  repository       = github_repository.infrastructure_live.name
  secret_name      = "release_please_token"
  plaintext_value  = var.release_please_token
}
