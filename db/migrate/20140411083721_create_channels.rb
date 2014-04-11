class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.references :owner, index: true
      t.string :name

      t.timestamps
    end
  end
end
