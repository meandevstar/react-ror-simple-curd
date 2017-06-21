class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|

    	t.references :classroom, index: true
    	t.column "name", :string, :null => false
    	t.column "gender", :string, :null => false
    	t.column "specialization", :string, :null => false

      t.timestamps
    end
  end
end
