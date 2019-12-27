require 'rails_helper'
RSpec.describe "テスト", :type => :system do
  it "パスのプレフィックス動く" do
    visit new_user_session_path
  end
end