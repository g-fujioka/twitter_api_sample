# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  name                :string
#  image               :string
#  email               :string
#  admin_flag          :boolean          default(FALSE), not null
#  last_login_provider :string
#  last_login_at       :datetime
#  user_agent          :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class User < ApplicationRecord
  has_many :authentications

  def https_image
    self.image.gsub('http://', 'https://')
  end

  class << self
    def create_with_auth(authentication, request)
      user = User.new
      user.name                = (authentication.nickname.presence || authentication.name)
      user.image               = authentication.image    if authentication.image.present?
      user.email               = authentication.email    if authentication.email.present?
      user.last_login_provider = authentication.provider if authentication.provider.present?
      user.last_login_at       = Time.now
      user.user_agent          = request.env['HTTP_USER_AGENT'] rescue 'error'
      user.save!

      authentication.user_id = user.id
      authentication.save!

      return user
    end
  end
end
