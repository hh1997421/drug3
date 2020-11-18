class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string      :status,  null: false          # 症状
      t.string      :name,   null:false            # 商品
      t.string      :sleep,  null: false           # 眠気
      t.integer     :price,  null: false           # 値段
      t.string      :information, null: false      # URL

      t.timestamps
    end
  end
end
