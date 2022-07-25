require 'rails_helper'

RSpec.describe 'employee show page' do

  it "is able to show all of employees" do

    department = Department.create!(name: "Denver Department", floor: "Basement")
    department_2 = Department.create!(name: "Mexico Department", floor: "Basement")
    department_3 = Department.create!(name: "Texas Department", floor: "Top Floor")
    employee = department.employees.create!(name: "Wes", level: 2)
    employee_2 = department_2.employees.create!(name: "Ashley", level: 3)
    employee_3 = department_2.employees.create!(name: "Dave", level: 4)

    visit "/employees/#{employee.id}"

    expect(page).to have_content("Wes")

  end
end