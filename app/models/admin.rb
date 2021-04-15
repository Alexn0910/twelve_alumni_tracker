class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :omniauthable, omniauth_providers: [:google_oauth2]

  def self.from_google(email:, full_name:, uid:, avatar_url:)
    emailInDatabase = false
    @members = Member.all.order('id ASC')
	@members.each do |member|
		if member.email == email
			emailInDatabase = true
		end
	end
    #return nil unless /@gmail.com || @tamu.edu\z/.match?(email)
    return nil unless (emailInDatabase || ("twelvetamu@gmail.com" == email) || ("rwilson@tamu.edu" == email) || ("terryho618@tamu.edu" == email) || ("nguyen.alex@tamu.edu" == email) || ("wann212@tamu.edu" == email) || ("keerthana96@tamu.edu" == email))

    create_with(uid: uid, full_name: full_name, avatar_url: avatar_url).find_or_create_by!(email: email)
  end
  
end

