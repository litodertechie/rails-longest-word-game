require "open-uri"
class GamesController < ApplicationController
  def new
    @letters = Array.new(8) { ('A'..'Z').to_a.sample }
  end

  def score
    @letters = params[:letters].split
    @word = (params[:answer])
    response = open("https://wagon-dictionary.herokuapp.com/#{params[:answer]}")
    json = JSON.parse(response.read)
    if json['found'] == true
      @score = "Congratulations! The word #{params[:answer]} exists"
    elsif
      @word.chars.all? { |letter| word.count(letter) <= letters.count(letter) }
      @score =
    end
  end
end
