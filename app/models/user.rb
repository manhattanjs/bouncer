# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  name                   :string(255)
#  avatar                 :string(255)
#

class User < ActiveRecord::Base
  devise :database_authenticatable, :rememberable, :trackable,
         :omniauthable, omniauth_providers: [:google_oauth2]

  # :email, :password, :password_confirmation, :remember_me, :avatar, :name

  def self.find_or_create_google(auth_hash)
    user = where(email: auth_hash[:info][:email]).first_or_create! do |u|
      u.password = Devise.friendly_token[0,20]
    end
    user.name = auth_hash[:info][:name]
    user.avatar = auth_hash[:info][:image]
    user.save if user.changed?
    user
  end

end
