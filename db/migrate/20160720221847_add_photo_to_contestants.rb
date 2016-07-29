class AddPhotoToContestants < ActiveRecord::Migration
  def change
  	add_attachment :contestants, :photo
  end
end
