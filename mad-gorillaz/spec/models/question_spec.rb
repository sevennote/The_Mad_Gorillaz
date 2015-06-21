require 'rails_helper'

RSpec.describe Question, type: :model do

  let(:dummy) { User.create!(username: 'dummy', password: 'pass', id: 1) }
  let(:survey) { dummy.surveys.create(title: "Who likes me?", id: 3) }

  it { should belong_to :survey }
  it { should have_many :possible_answers }
  it { should have_many :user_answers }

  it "has a prompt" do
    survey.questions.create(prompt: "Do you like me?")
    expect(survey.questions.first.prompt).to eq("Do you like me?")
  end

  it "belongs to a specific survey" do
    s = survey.questions.create(prompt: "Do you like me?")
    expect(s.survey_id).to eq(3)
  end

  # it "" do

  # end

end
