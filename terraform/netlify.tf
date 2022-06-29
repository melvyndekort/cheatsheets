resource "netlify_site" "site" {
  name = "cheatsheets-mdekort-nl"

  repo {
    repo_branch = "main"
    dir         = "src"
    provider    = "github"
    repo_path   = "melvyndekort/cheatsheets"
  }
}
