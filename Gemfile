source 'https://rubygems.org'
RAILS_VERSION = ENV["RAILS_VERSION"] || "default"

# Specify your gem's dependencies in persist_campaign.gemspec

rails = case RAILS_VERSION
when "master"
  { github: "rails/rails" }
when "default"
  ">= 4.2.1"
else
  "~> #{RAILS_VERSION}"
end

gem "rails", rails
gemspec
