class BlogsController < ApplicationController
   before_action :authenticate_user!

  before_action :set_blog, only: [:edit, :update, :destroy]

  def confirm
    @blog = Blog.new(blogs_params)
    render :new if @blog.invalid?
  end

  def index
    @blogs = Blog.all
    raise
  end

  def new
    if params[:back]
      @blog = Blog.new(blogs_params)
    else
      @blog = Blog.new
    end
  end

  def edit
    @blogs = Blog.all
    @blog = Blog.find(params[:id])
  end

  def update
    # edit, update, destroyで共通コード
    @blog = Blog.find(params[:id])

    if @blog.update(blogs_params)
      redirect_to blogs_path, notice: "ブログを更新しました！"
    else
      render action: 'edit'
    end
  end

  def destroy
    # edit, update, destroyで共通コード
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to blogs_path, notice: "ブログを削除しました！"
  end

  def create
    @blog = Blog.new(blogs_params)
    @blog.user_id = current_user.id
    if @blog.save
      redirect_to blogs_path, notice: "ブログを作成しました！"
      NoticeMailer.sendmail_blog(@blog).deliver
    else
      render  'new'
    end
  end



  private
    def blogs_params
      params.require(:blog).permit(:title, :content, :user_id, :name)
    end

    # idをキーとして値を取得するメソッド
    def set_blog
      @blog = Blog.find(params[:id])
    end
end
