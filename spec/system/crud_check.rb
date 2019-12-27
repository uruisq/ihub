require 'rails_helper'

RSpec.describe 'CRUD機能', type: :system do
  before do
    @user_01 = FactoryBot.create(:test01)
    @user_02 = FactoryBot.create(:test02)
    @feed_01 = FactoryBot.create(:feed01)
    @feed_02 = FactoryBot.create(:feed02)
    @feed_03 = FactoryBot.create(:feed03)
  end
  it 'メールアドレスとパスワードでログインができ、' do
    visit new_user_session_path
    sleep 10
  end
end