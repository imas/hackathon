resource "github_repository" "hackathon" {
  name        = "hackathon"
  description = "アイドルを愛でる。アイマスにContributeする"

  has_issues    = true
  has_wiki      = true
  has_downloads = true
}

resource "github_repository" "mastodon" {
  name         = "mastodon"
  description  = "アイマストドン / A microblogging server, fork of Mastodon"
  homepage_url = "https://imastodon.net/"

  has_issues    = true
  has_wiki      = true
  has_downloads = true
}

resource "github_repository" "imasparql" {
  name         = "imasparql"
  description  = "imasparql's RDFs"
  homepage_url = "https://sparql.crssnky.xyz/imas/"

  has_issues    = true
  has_wiki      = false
  has_downloads = true
}

resource "github_repository" "rdflint" {
  name         = "rdflint"
  description  = "RDF linter"

  has_issues    = true
  has_wiki      = true
  has_downloads = true
}

resource "github_repository" "imasbook" {
  name          = "imasbook"
  description   = "週刊IM@Study"

  has_downloads = true
  has_issues    = true
  has_wiki      = true
}
