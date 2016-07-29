class FixNameSurnamePhoto < ActiveRecord::Migration
  def change
  	change_table :contestants do |t|
      t.rename :name, :nombre
      t.rename :surname, :apellido
      t.rename :photo_file_name, :foto_file_name
      t.rename :photo_content_type, :foto_content_type
      t.rename :photo_file_size, :foto_file_size
      t.rename :photo_updated_at, :foto_updated_at
  	end 
  end
end
