class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_attributes=(name)
    self.user = User.find_or_create_by(name) if name[:username].present?
  end
end
