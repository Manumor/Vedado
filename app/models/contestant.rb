class Contestant < ActiveRecord::Base
	validates :nombre, presence: true
	validates :apellido, presence: true
	validates :email, presence: true, uniqueness: true
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validates :estanco, presence: true
	has_attached_file :foto
	validates_attachment :foto, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
	validates_attachment_presence :foto
end
