require 'rails_helper'

describe Blog do
  # タイトルと内容があれば有効な状態であること
  it "is valid with title and content" do
    blog = Blog.new(title: '宮岡', content: '暑いです')
    expect(blog).to be_valid
  end

  #タイトルがなければ無効であること
  it "is invalid without title" do
    blog = Blog.new
    expect(blog).not_to be_valid
  end

  #内容がなければ無効であること
  it "is invalid without content" do
    blog = Blog.new
    #blog.valid?
    expect(blog).not_to be_valid
    #expect(blog.errors[:content]).to include("を入力してください")
  end
end
