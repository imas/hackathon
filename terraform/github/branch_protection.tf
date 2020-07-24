resource "github_branch_protection" "hackathon_master" {
  repository     = "hackathon"
  branch         = "master"
  enforce_admins = false

  required_status_checks {}

  required_pull_request_reviews {
    dismiss_stale_reviews = false
  }

  restrictions {
    teams = ["imas_hack"]
  }
}

resource "github_branch_protection" "mastodon_imastodon" {
  repository     = "mastodon"
  branch         = "imastodon"
  enforce_admins = false

  required_status_checks {
    strict   = false
    contexts = [
      "ci/circleci: test-ruby2.6",      
    ]
  }

  required_pull_request_reviews {
    dismiss_stale_reviews = false
  }

  restrictions {}
}

resource "github_branch_protection" "imasparql_master" {
  repository     = "imasparql"
  branch         = "master"
  enforce_admins = false

  required_status_checks {
    strict   = true
    contexts = ["rdflint"]
  }

  required_pull_request_reviews {
    dismiss_stale_reviews = false
    require_code_owner_reviews = true
    required_approving_review_count = 1
  }

  restrictions {}
}
