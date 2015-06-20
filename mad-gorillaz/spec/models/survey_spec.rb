require 'rails_helper'

RSpec.describe Survey, type: :model do

let(:dummy) { User.create!(username: 'dummy', password: 'pass', id: 1) }

  # it { should validates_presence_of :title }

  it "belongs has a title" do
    dummy.surveys.create(title: "Who likes me?")
    expect(dummy.surveys.first.title).to eq("Who likes me?")
  end

  it "has a no initial questions" do
    expect(dummy.surveys).to eq([])
  end

  it "belongs to a specific user" do
    dummy.surveys.create!(title: "Who likes me?")
    s = dummy.surveys.first
    expect(s.user_id).to eq(1)
  end

  it "has a number of questions" do
    dummy.surveys.create!(title: "Who likes me?")
    s = dummy.surveys.first
    s.questions.create(prompt: "Do you?")
    expect(s.questions.count).to eq(1)
    s.questions.create(prompt: "Maybe you?")
    expect(s.questions.count).to eq(2)
  end

end