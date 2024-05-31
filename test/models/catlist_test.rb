require 'test_helper'

class CatlistTest < ActiveSupport::TestCase
  def setup
    @country = Country.create(title: "Country 1")
    @catlist = Catlist.new(name: "Catlist 1", country: @country)
  end

  test "should be valid" do
    assert @catlist.valid?
  end

  test "name should be present" do
    @catlist.name = " "
    assert_not @catlist.valid?
  end

  test "should belong to a country" do
    @catlist.country = nil
    assert_not @catlist.valid?
  end

  test "should have many cats" do
    assert_respond_to @catlist, :cats
  end

  test "should set path before create" do
    @catlist.save
    assert_equal @catlist.name, @catlist.path
  end
end