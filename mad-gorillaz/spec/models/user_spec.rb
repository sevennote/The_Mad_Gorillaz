require 'rails_helper'

RSpec.describe User, type: :model do

  let(:dummy) { User.create!(username: 'dummy', password: 'pass') }

  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:password) }
  it { should have_many(:surveys) }

  it "creates a user with a user name" do
    expect(dummy.username).to eq('dummy')
    expect(dummy.password.class).to eq(String)
  end

  it "should have no initial surveys" do
    expect(dummy.surveys.count).to eq(0)
  end

  it "should be able to count its own surveys" do
    dummy.surveys.create(title: "Hola")
    expect(dummy.surveys.count).to eq(1)
  end

  it "has a hased password" do
    expect(dummy.password_digest).not_to eq('pass')
  end

  it "should be able to count questions of surveys it owns" do
    dummy.surveys.create(title: "Hola")
    dummy.surveys.first.questions.create(prompt: "hello")
    question = 0
    dummy.surveys.collect{|s| question += s.questions.count}
    expect(question).to eq(1)
  end

end
