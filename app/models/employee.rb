class Employee < ApplicationRecord


  belongs_to :role
  belongs_to :department


  validates :employeeName,  presence: true, length: { maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :employeeEmail, presence: true, length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: true, on: :create

  has_secure_password

  validates :password, length: { minimum: 6 }, presence: true , :if => :password

  validates_presence_of :password_confirmation, presence: true, :if => :password

  ACTIVE = %w[11,12,10,24,19,13,58,93,95,96]

  def employee_with_company
    "#{employeeName}: #{department.company.Ctitle}"
  end








end
