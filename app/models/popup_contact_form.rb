class PopupContactForm < ActiveRecord::Base
	validates :name, :phone, presence: true, on: :create
end
