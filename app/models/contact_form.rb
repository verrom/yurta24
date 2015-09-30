class ContactForm < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 20 }
	validates :email, presence: true, length: { maximum: 20 }
	validates :phone, presence: true, length: { maximum: 20 }
	validates :text, presence: true, length: { maximum: 200 }
end
