class PagesController < ApplicationController
  def home
    @random_fact = JSON.parse(HTTParty.get("https://geek-jokes.sameerkumar.website/api?format=json").body)
  end

  def about
    @random_advice = JSON.parse(HTTParty.get("https://api.adviceslip.com/advice").body)
  end

  def contact
  end
end
