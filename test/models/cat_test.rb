require 'test_helper'

class CatTest < ActiveSupport::TestCase
  def setup
    @user = User.create(name: "John", email: "john@example.com", password: "password", password_confirmation: "password")
    @catlist = Catlist.create(name: "My Catlist", user: @user)
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