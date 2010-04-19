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
end
