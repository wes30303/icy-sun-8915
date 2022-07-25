class Department < ApplicationRecord
  has_many :employees

  def self.d_e
    joins(department: :employee)
  end
  
end
