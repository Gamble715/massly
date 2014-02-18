class LinksController < ApplicationController
  def show
    @link = Link.find(params[:id])
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    @link.slug = ["agilispeed", "awesomeness", "freesponsibility", "teamswork", "transopency"].sample

    respond_to do |format|
      if @link.save
        format.html { redirect_to @link, notice: 'Link was successfully created.' }
      else
        format.html { render action: 'new', error: 'Something went wrong!' }
      end
    end
  end

  def go
    link = Link.find_by_slug(params[:slug])
    redirect_to link.url
  end

  private

  def link_params
    params.require(:link).permit(:url, :slug)
  end
end
