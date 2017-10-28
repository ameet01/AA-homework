require 'rails_helper'

describe User do
  FactoryGirl.define do
    factory :user do
    end
  end
  subject(:user) do
    FactoryGirl.build(:user,
      email: "ameet@gmail.com",
      password: "password")
  end

    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_length_of(:password).is_at_least(6) }

    it 'creates a password digest when a password is given' do
      expect(user.password_digest).to_not be_nil
    end

    it 'creates a session token' do
      expect(user.session_token).to_not be_nil
    end

    describe "#reset_session_token!" do
      it 'sets a new users token for the user' do
        old_token = user.session_token
        new_token = user.reset_session_token!

        expect(new_token).to_not eq(old_token)
      end

      it 'returns the session token' do
        expect(user.reset_session_token!).to eq(user.session_token)
      end
    end

    describe "valid_password?" do
      it 'verifies that a password is right' do
        expect(user.valid_password?('password')).to be true
      end

      it 'verifies that a password is not correct' do
        expect(user.valid_password?('pw')).to be false
      end
    end

    describe '#find_by_credentials' do
      it 'finds and returns the user given good input' do
        expect(User.find_by_credentials("ameet@gmail.com", "password")).to eq(user)
      end

      it 'returns nil for bad input' do
        expect(User.find_by_credentials("ameet01@gmail.com", "pw")).to eq(nil)
      end
    end
end
