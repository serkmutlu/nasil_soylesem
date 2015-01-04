class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :email
      t.string :shame
      t.string :choice
      t.string :userip

      t.timestamps
    end
  end
end
