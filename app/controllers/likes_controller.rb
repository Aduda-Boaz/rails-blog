class LikesController < ApplicationController
  def create
    like = Like.new(like_params)
    if like.save
      redirect_back(fallback_location: root_path)
    else
      puts 'Error'
    end
  end

  def like_params
    params.require(:like).permit(:author_id, :post_id)
  end
end
