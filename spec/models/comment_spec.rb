require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe 'ツイートの保存' do
    context "ツイートが保存できる場合" do
      it "textがあればツイートは保存される" do
        expect(@comment).to be_valid
      end
    end

    context "ツイートが保存できない場合" do
      it "textがないとコメントは投稿できない" do
        @comment.text = ""
        @comment.valid?
        expect(@comment.errors.full_messages).to include("Text can't be blank")
      end 
      it "ユーザーが紐付いていないとコメントは投稿できない" do
        @comment.user = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include("User must exist")
      end

    end
  end
end
