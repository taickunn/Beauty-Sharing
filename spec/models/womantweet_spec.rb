require 'rails_helper'

RSpec.describe Womantweet, type: :model do
  before do
    @womantweet = FactoryBot.build(:womantweet)
  end

  describe 'ツイートの保存' do
    context "ツイートが保存できる場合" do
      it "titleとbodyとimage_idがあればツイートは保存される" do
        expect(@womantweet).to be_valid
      end
    end

    context "ツイートが保存できない場合" do
      it "titleがないとツイートは保存できない" do
        @womantweet.title = ""
        @womantweet.valid?
        expect(@womantweet.errors.full_messages).to include("Title can't be blank")
      end
      it "bodyがないとツイートは保存できない" do
        @womantweet.body = ""
        @womantweet.valid?
        expect(@womantweet.errors.full_messages).to include("Body can't be blank")
      end
      it "imageがないとツイートは保存できない" do
        @womantweet.image_id = nil
        @womantweet.valid?
        expect(@womantweet.errors.full_messages).to include("Image can't be blank")
      end  
      it "ユーザーが紐付いていないとツイートは保存できない" do
        @womantweet.user = nil
        @womantweet.valid?
        expect(@mantweet.errors.full_messages).to include("User must exist")
      end

    end
  end
end
