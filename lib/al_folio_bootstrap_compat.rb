# frozen_string_literal: true

require "jekyll"
require_relative "al_folio_bootstrap_compat/version"

Jekyll::Hooks.register :site, :post_read do |site|
  enabled = site.config.dig("al_folio", "compat", "bootstrap", "enabled") == true
  next unless enabled

  Jekyll.logger.info("al_folio_bootstrap_compat:", "enabled (supported through v1.2, deprecated in v1.3, removed in v2.0)")
end
