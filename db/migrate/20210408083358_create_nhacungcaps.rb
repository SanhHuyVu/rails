class CreateNhacungcaps < ActiveRecord::Migration[6.1]
  def change
    create_table :nhacungcaps do |t|
      t.integer :idnhacungcap
      t.string :tennhacungcap
      t.string :diachi
      t.text :thongtindaidien

      t.timestamps
    end
  end
end
