class Api::MyExamplesController < ApplicationController
  def fortune_action
    fortunes = [
                  "you will live a long and healthy life.", 
                  "you will die a terrible death.", 
                  "check back later, I'm busy."
                ]

    @fortune = fortunes.sample

    render 'fortune_view.json.jb'
  end

  def lotto_action
    possible_numbers = (1..60).to_a
    @lucky_numbers = possible_numbers.sample(6)

    render 'lotto_view.json.jb'
  end

  def count_action
    @count = 0
    @count += 1
    render 'count_view.json.jb'
  end
end
