class CreateHangsxes < ActiveRecord::Migration[6.1]
  def change
    create_table :hangsxes do |t|
      t.integer :idnhasanxuat
      t.string :tenhang
      t.text :quocgia

      t.timestamps
    end
  end
end
