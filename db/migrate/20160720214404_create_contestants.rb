class CreateContestants < ActiveRecord::Migration
  def change
    create_table :contestants do |t|

    	t.string :name
    	t.string :surname
    	t.string :email
    	t.string :estanco

      t.timestamps null: false
    end
  end
end
