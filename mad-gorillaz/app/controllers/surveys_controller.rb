class SurveysController < ApplicationController
  def create
  end

  def new
    @survey = Survey.new
    @question = Question.new
    @possible_answer = PossibleAnswer.new
  end

  def show
  end

  def owner_display
  end

  def destroy
  end

  def edit
  end

  def update
  end
end
