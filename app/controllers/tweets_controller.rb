class TweetsController < ApplicationController
  def new
    @tweets = Tweet.all
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(text: params[:tweet][:text])
    if @tweet.save
      ActionCable.server.broadcast 'message_channel', content: @tweet
    end
  end
end
