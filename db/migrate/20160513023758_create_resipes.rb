class CreateResipes < ActiveRecord::Migration
  def change
    create_table :resipes do |t|
      t.string :controller

      t.timestamps null: false
    end
  end
end
