class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|

    	t.column "classroom_id", :bigint, :unique => true
    	t.column "name", :string, :null => false
    	t.column "gender", :string, :null => false
    	t.column "birthday", :date, :null => false

      t.timestamps
    end

    add_index("teachers", "classroom_id")
  end
end
