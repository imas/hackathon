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
    contexts = ["continuous-integration/travis-ci"]
  }

  required_pull_request_reviews {
    dismiss_stale_reviews = false
  }

  restrictions {}
}
