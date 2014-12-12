class PostMailer < ActionMailer::Base
  default from: "amelia@honeydew.com"

  def new_post(post_id)
    @post = Post.find(post_id)
    mail(to: "regalbee400@gmail.com", subject: "A new HoneyDew blog post has been added!")
  end

end
