class CreateMessagings < ActiveRecord::Migration
  def self.up
    create_table :messagings do |t|
      t.text :hash

      t.timestamps
    end
  end

  def self.down
    drop_table :messagings
  end
end
