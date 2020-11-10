require 'rails_helper'

RSpec.describe Secondcomment, type: :model do
  before do
    @secondcomment = FactoryBot.build(:secondcomment)
  end

  describe 'ツイートの保存' do
    context "ツイートが保存できる場合" do
      it "textがあればツイートは保存される" do
        expect(@secondcomment).to be_valid
      end
    end

    context "ツイートが保存できない場合" do
      it "textがないとコメントは投稿できない" do
        @secondcomment.text = ""
        @secondcomment.valid?
        expect(@secondcomment.errors.full_messages).to include("Text can't be blank")
      end 
      it "ユーザーが紐付いていないとコメントは投稿できない" do
        @secondcomment.user = nil
        @secondcomment.valid?
        expect(@secondcomment.errors.full_messages).to include("User must exist")
      end

    end
  end
end
