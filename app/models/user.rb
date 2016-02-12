class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  validates :nickname, presence: true

  has_attached_file :avatar,
                      styles:  { medium: "300x300#", thumb: "100x100#" }
  validates_attachment_content_type :avatar,
                                      content_type: ["image/jpg","image/jpeg","image/png"]

belongs_to :genders
belongs_to :housemates
belongs_to :occupations

def age
  date_format = "%Y%m%d"
  (Date.today.strftime(date_format).to_i - birth_day.strftime(date_format).to_i) / 10000
end

end
