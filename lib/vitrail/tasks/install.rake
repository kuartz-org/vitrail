# frozen_string_literal: true

namespace :vitrail do
  desc "Install Vitrail with default stylesheets"
  task install: :environment do
    Rails::Generators.invoke "vitrail:install"
  end
end
