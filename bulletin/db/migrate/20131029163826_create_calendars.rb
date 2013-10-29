class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.string :person1
      t.string :person2
      t.string :nickname
      t.string :password_digest

      t.timestamps
    end
  end
end
