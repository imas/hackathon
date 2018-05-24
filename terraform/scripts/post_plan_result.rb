require 'octokit'

Octokit.auto_paginate = true
client = Octokit::Client.new(access_token: ENV['GITHUB_TOKEN'])
repository = "#{ENV['CIRCLE_PROJECT_USERNAME']}/#{ENV['CIRCLE_PROJECT_REPONAME']}"

pull = client.pull_requests(repository, state: 'open').find { |pull| pull.head.sha == ENV['CIRCLE_SHA1'] }

if pull
  body = File.read("#{ENV['REPORT_DIR']}/terraform_github.log")

  comment = <<~COMMENT
    ```diff
    #{body.chomp}
    ```
  COMMENT

  client.add_comment(repository, pull.number, comment)
end
