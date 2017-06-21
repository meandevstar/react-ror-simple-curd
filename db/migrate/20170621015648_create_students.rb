class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|

    	t.column "student_number", :integer, :null => false
    	t.column "name", :string, :null => false
    	t.column "gender", :string, :null => false
    	t.column "birthday", :date, :null => false

      t.timestamps
    end
  end
end
