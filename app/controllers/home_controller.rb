class HomeController < ApplicationController
  def index
    @photos = Photo.all.limit(8)
  end
end
