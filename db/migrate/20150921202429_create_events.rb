class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.datetime :date

      t.timestamps
    end
    add_reference :events, :creator, index: true
    add_reference :events, :attendee, index: true
  end
end
