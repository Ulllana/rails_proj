require 'test_helper'

class CountryTest < ActiveSupport::TestCase
  def setup
    @country = Country.new(title: "Country 1")
  end

  test "should be valid" do
    assert @country.valid?
  end

  test "title should be present" do
    @country.title = " "
    assert_not @country.valid?
  end

  test "should have many catlists" do
    assert_respond_to @country, :catlists
  end
end
