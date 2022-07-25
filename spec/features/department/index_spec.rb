require 'rails_helper'

RSpec.describe 'departments Index page' do

  it "is able to list all of the departments when i visit the index page" do
    department = Department.create!(name: "Denver Department", floor: "Basement")
    department_2 = Department.create!(name: "Mexico Department", floor: "Basement")
    department_3 = Department.create!(name: "Texas Department", floor: "Top Floor")
    employee = department.employees.create!(name: "Wes", level: 2)
    employee_2 = department_2.employees.create!(name: "Ashley", level: 3)
    employee_3 = department_2.employees.create!(name: "Dave", level: 4)

    visit '/department'

    expect(page).to have_content("Denver Department")
    expect(page).to have_content("Mexico Department")
    expect(page).to have_content("Texas Department")
    expect(page).to_not have_content("USA Department")
  end

  # it "will be able to see all department with the employees" do
  #   department = Department.create!(name: "Denver Department", floor: "Basement")
  #   department_2 = Department.create!(name: "Mexico Department", floor: "Basement")
  #   department_3 = Department.create!(name: "Texas Department", floor: "Top Floor")
  #   employee = department.employees.create!(name: "Wes", level: 2)
  #   employee_2 = department_2.employees.create!(name: "Ashley", level: 3)
  #   employee_3 = department_2.employees.create!(name: "Dave", level: 4)
  #
  #   visit '/department'
  #
  #   expect(page).to have_content("Wes")
  #   expect(page).to have_content("Ashley")
  #   expect(page).to have_content("Dave")
  #   expect(page).to_not have_content("banna")
  #
  # end

end
