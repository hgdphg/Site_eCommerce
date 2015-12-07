require 'rails_helper'

RSpec.describe User, type: :model do
  before { @user = FactoryGirl.build(:user) }

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:age) }
  it { should respond_to(:address) }
  it { should respond_to(:email) }
  it { should respond_to(:password) }
end
