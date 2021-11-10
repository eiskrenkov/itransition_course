module PostsHelper
  def post_published_sign(post)
    post.published ? 'YES' : 'NO'
  end
end
