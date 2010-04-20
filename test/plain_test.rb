require 'helper'

class RegressionTest < ActiveSupport::TestCase
  
  def new_user
    user = Object.new
    def user.name
      "Horst"
    end
    user
  end
  
  test "User has a name" => :new_user do |user|
    assert_respond_to user, :name
    user.name
  end
  
  test "User name is Horst" => "User has a name" do |name|
    assert_equal "Horst", name
  end
  
  test "multiple return values" do
    a, b, c, d = 1,2,3,4
  end
  
  test "Consume separately" => "multiple return values" do |a,b,c,d|
    assert_equal 1, a
    assert_equal 2, b
    assert_equal 3, c
    assert_equal 4, d
  end
  
  test "Consume altogether" => "multiple return values" do |*arr|
    assert_equal 1, arr[0]
    assert_equal 2, arr[1]
    assert_equal 3, arr[2]
    assert_equal 4, arr[3]
  end
end
