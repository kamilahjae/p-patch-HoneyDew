class PostMailer < ActionMailer::Base
  default from: "amelia@honeydew.com"

  def new_post(post_id)
    @post = Post.find(post_id)
    @users = User.all
    @email_array = []
    @users.where("email IS NOT NULL").each do |user|
        @email_array << user.email
    end

    mail(cc:
      @email_array.each do |email|
        email
      end,
      subject: "A new HoneyDew blog post has been added!")
  end

end
