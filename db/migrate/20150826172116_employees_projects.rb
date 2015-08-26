class EmployeesProjects < ActiveRecord::Migration
  def change
    create_table(:employees_projects) do |t|
      t.column(:employee_id, :integer)
      t.column(:project_id, :integer)

      t.timestamps()

      add_column(:projects, :employee_id, :integer)
    end
  end
end
