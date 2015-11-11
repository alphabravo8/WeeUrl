class UrlsController < ApplicationController
  def index
    @url = Url.all.order(id: :desc)
  end
  
  def new
    @url = Url.new
  end

  def create
    @url = Url.new(params.require(:url).permit(:url))
    if @url.save
      flash[:slug] = @url.slug
      redirect_to new_url_url
    else
      render :action => "new"
    end
  end

  def show
    @url = Url.find_by slug:params[:slug]
    if !@url.nil?
      redirect_to @url.url, :status => 301   
    else
      flash[:no_url_found] = "No Url Found"
      redirect_to '/'
    end
  end
end
