class PhotosController < ApplicationController
  def index
    if params[:photo]
      response = HTTParty.get(
          "https://api.unsplash.com/search/photos?page=1&per_page=30&query=#{params[:photo][:query]}",
          headers: {"Authorization" => "Client-ID 491b0ab078e54dbb2e8a217a09ddacd94c89905722cfa6474fc57ea67f600b6b"}
      )
      @photos = response['results']
    else
      @photos = {}
    end
  end

  def preview
    @photo = params[:photo]
  end
end
