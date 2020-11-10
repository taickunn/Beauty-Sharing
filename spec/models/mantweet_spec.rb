require 'rails_helper'

RSpec.describe Mantweet, type: :model do
  before do
    @mantweet = FactoryBot.build(:mantweet)
  end

  describe 'ツイートの保存' do
    context "ツイートが保存できる場合" do
      it "titleとbodyとimage_idがあればツイートは保存される" do
        expect(@mantweet).to be_valid
      end
    end

    context "ツイートが保存できない場合" do
      it "titleがないとツイートは保存できない" do
        @mantweet.title = ""
        @mantweet.valid?
        expect(@mantweet.errors.full_messages).to include("Title can't be blank")
      end
      it "bodyがないとツイートは保存できない" do
        @mantweet.body = ""
        @mantweet.valid?
        expect(@mantweet.errors.full_messages).to include("Body can't be blank")
      end
      it "imageがないとツイートは保存できない" do
        @mantweet.image_id = nil
        @mantweet.valid?
        expect(@mantweet.errors.full_messages).to include("Image can't be blank")
      end  
      it "ユーザーが紐付いていないとツイートは保存できない" do
        @mantweet.user = nil
        @mantweet.valid?
        expect(@mantweet.errors.full_messages).to include("User must exist")
      end

    end
  end
end
