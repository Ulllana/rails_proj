require 'test_helper'

class CatTest < ActiveSupport::TestCase
  def setup
    @country = Country.create(title: "Country 1")
    @catlist = Catlist.create(name: "Catlist 1", country: @country)
    @cat = Cat.new(name: "Whiskers", catlist: @catlist)
  end

  test "should be valid" do
    assert @cat.valid?
  end

  test "name should be present" do
    @cat.name = " "
    assert_not @cat.valid?
  end

  test "should belong to a catlist" do
    @cat.catlist = nil
    assert_not @cat.valid?
  end
end