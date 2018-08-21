class StoreCommentsController < ApplicationController
  def create
    @store_comment = StoreComment.new
    @store_comment.store_id = params[:store_id]
    @store_comment.content = params[:storeComment]
    @store_comment.save
    
    redirect_to :back
  end

  def delete
    if current_user != nil && current_user.permission == 2
      @store = Store.find(params[:store_id])
      @store_comment = StoreComment.find(params[:store_comment_id])
      @store_comment.destroy
    end
    redirect_to "/list/findStoreInfo/#{@store.id}"
  end
end
