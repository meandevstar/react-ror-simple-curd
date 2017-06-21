class CreateClassrooms < ActiveRecord::Migration[5.1]
  def change
    create_table :classrooms do |t|

    	t.column "room_number", :integer, :null => false, :unique => true
    	t.column "room_name", :string, :null => false, :unique => true
    	t.column "floor_number", :integer, :null => false
    	t.column "student_capacity", :integer, :null => false

      t.timestamps
    end
  end
end
