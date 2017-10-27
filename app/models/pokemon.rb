class Pokemon < ApplicationRecord
	belongs_to :trainer, optional: true
	#validates_uniqueness_of :name
	validates :name, presence: true, uniqueness: {  case_sensitive: true }
end
