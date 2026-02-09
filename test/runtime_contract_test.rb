# frozen_string_literal: true

require_relative "test_helper"

class RuntimeContractTest < Minitest::Test
  def test_floating_positioning_uses_viewport_coordinates_for_fixed_overlay
    js = ROOT.join("assets/js/bootstrap-compat.js").read

    refute_match(/rect\.top\s*\+\s*window\.scrollY/, js)
    refute_match(/rect\.left\s*\+\s*window\.scrollX/, js)
    assert_match(/const top = rect\.top - bubble\.offsetHeight - 8;/, js)
  end

  def test_collapse_show_rule_is_present_in_compat_css
    css = ROOT.join("assets/css/bootstrap-compat.css").read

    assert_match(/\.collapse\.show\s*\{\s*display:block;\s*visibility:visible\s*\}/, css)
  end
end
