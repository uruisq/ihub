require 'rails_helper'

RSpec.describe 'CRUD機能', type: :system do

  before do
    @user_01 = FactoryBot.create(:test01)
    @user_02 = FactoryBot.create(:test02)
    @feed_01 = FactoryBot.create(:feed01)
    @feed_02 = FactoryBot.create(:feed02)
    @feed_03 = FactoryBot.create(:feed03)
  end

  describe 'ログイン機能' do
    context 'メールアドレスとパスワードでログインができ、' do
      visit new_user_session_path
      fill_in 'email', with: "test01@test.com"
      fill_in "password", with: "555555"
      click_button "ログイン"
      it '一覧画面がみられる。' do
        expect(page).to have_content 'ぐずりに効くよだれカバー'
      end
    end
    context 'タスク登録画面で、必要項目を入力してcreateボタンを押したら' do
      before do
        visit new_feed_path
        sleep 5
        fill_in "title", with: 'test01'
        fill_in "content", with: 'content01'
        fill_in "search_area", with: '4948327748648'
        click_on '検索'
        click_on '送信する'
      end
      it '作成済みのタスクが表示される' do
        expect(page).to have_content 'test01'
      end
    end
  end
end