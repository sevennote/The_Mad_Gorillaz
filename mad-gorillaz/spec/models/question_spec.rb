require 'rails_helper'

RSpec.describe Question, type: :model do

  let(:dummy) { User.create!(username: 'dummy', password: 'pass') }
  let(:survey) { dummy.surveys.create(title: "Who likes me?") }

  it "belongs to a survey" do
    survey.questions.create(prompt: "Do you like me?")
    expect(survey.questions.first.prompt).to eq("Do you like me?")
  end

end
