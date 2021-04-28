require 'flickr'

class StaticPagesController < ApplicationController
  def index
    @flickr = Flickr.new
    begin
      @list = @flickr.photos.search(user_id: params[:id])
    rescue => exception
      @list = @flickr.photos.getRecent(per_page: 10)
    end
    
  end
end
