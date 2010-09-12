class CreateCooties < ActiveRecord::Migration
  def self.up
    create_table :cooties do |t|
      t.string :from_email
      t.string :to_email
      t.string :fortune1
      t.string :fortune2
      t.string :fortune3
      t.string :fortune4
      t.string :fortune5
      t.string :fortune6
      t.string :fortune7
      t.string :fortune8
      t.boolean :pickedup

      t.timestamps
    end
  end

  def self.down
    drop_table :cooties
  end
end
