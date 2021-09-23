require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validates presence" do
    context "first_and_last_nameを指定しているとき" do
      let(:user) { create(:first_name, :last_name) }
      it "レコードが作成される"　do
        expect(first_name, last_name).to be_valid
      end
    end

    context "emailを指定していないとき" do
      let(:user) { build(:user, email: nil) }
      it "エラーになる" do
        user.valid?
        expect(user.errors.messages[:user]).to include "空欄にはできません"
      end
    end
  end
end
