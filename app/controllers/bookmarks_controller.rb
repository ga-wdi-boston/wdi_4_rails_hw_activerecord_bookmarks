class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all

    #render text: "THIS WORK NOW"
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.create(bookmark_params)
    if @bookmark.save
      redirect_to bookmarks_path
    else
      render :new
    end
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  private
    def bookmark_params
      params.require(:bookmark).permit(:title, :url, :comment, :category, :favorite)
    end

end
