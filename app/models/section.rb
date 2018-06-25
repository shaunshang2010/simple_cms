class Section < ActiveRecord::Base
	belongs_to :page
	has_many :section_edits
	has_many :editors, :through => :section_edit, :class_name => "AdminUser"
end
