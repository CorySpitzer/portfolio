class PostsController < ApplicationController

  def index
    # will_paginate makes the 'page' method available
    @posts = Post.all.order('created_at').page(params[:page])
  end

  def show
    @post = Post.find params[:id]
  end
end
