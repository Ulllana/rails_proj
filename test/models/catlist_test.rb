require 'test_helper'

class CatlistTest < ActiveSupport::TestCase
  def setup
    @user = User.create(name: "John", email: "john@example.com", password: "password", password_confirmation: "password")
    @catlist = Catlist.new(name: "My Catlist", user: @user)
  end

  test "should be valid" do
    assert @catlist.valid?
  end

  test "name should be present" do
    @catlist.name = " "
    assert_not @catlist.valid?
  end

  test "should belong to a user" do
    @catlist.user = nil
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