class BookmarksController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    if @bookmark.save
      redirect_to new_list_path(@list)
    else
      render "lists/show"
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
