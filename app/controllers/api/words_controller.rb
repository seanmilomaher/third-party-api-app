class Api::WordsController < ApplicationController
  def show
    @word = HTTP
    .headers({
      "Authorization" => "Token #{Rails.application.credentials.owlbot_api[:api_key]}"
    })
    .get("https://owlbot.info/api/v4/dictionary/ostrich").parse
    render 'show.json.jb'
  end
end
