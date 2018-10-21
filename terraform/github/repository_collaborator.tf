# hackathon
resource "github_repository_collaborator" "hackathon_bode-mmk" {
  repository = "hackathon"
  username   = "bode-mmk"
  permission = "admin"
}

resource "github_repository_collaborator" "hackathon_hamaco" {
  repository = "hackathon"
  username   = "hamaco"
  permission = "admin"
}

# mastodon
resource "github_repository_collaborator" "mastodon_takayamaki" {
  repository = "mastodon"
  username   = "takayamaki"
  permission = "admin"
}

resource "github_repository_collaborator" "mastodon_YaQ00" {
  repository = "mastodon"
  username   = "YaQ00"
  permission = "push"
}

resource "github_repository_collaborator" "mastodon_lnanase" {
  repository = "mastodon"
  username   = "lnanase"
  permission = "push"
}

resource "github_repository_collaborator" "mastodon_fvh-P" {
  repository = "mastodon"
  username   = "fvh-P"
  permission = "push"
}

resource "github_repository_collaborator" "mastodon_deflis" {
  repository = "mastodon"
  username   = "deflis"
  permission = "push"
}

# imasparql
resource "github_repository_collaborator" "imasparql_crssnky" {
  repository = "imasparql"
  username   = "crssnky"
  permission = "admin"
}
