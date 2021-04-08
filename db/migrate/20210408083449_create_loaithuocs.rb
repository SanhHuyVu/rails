class CreateLoaithuocs < ActiveRecord::Migration[6.1]
  def change
    create_table :loaithuocs do |t|
      t.integer :idloai
      t.string :tenloai
      t.text :ghichu

      t.timestamps
    end
  end
end
