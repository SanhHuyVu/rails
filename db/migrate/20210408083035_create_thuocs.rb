class CreateThuocs < ActiveRecord::Migration[6.1]
  def change
    create_table :thuocs do |t|
      t.string :tenthuoc
      t.string :ghichu
      t.text :congdung
      t.string :idnhasanxuat
      t.string :idnhacungcap
      t.integer :idloai

      t.timestamps
    end
  end
end
