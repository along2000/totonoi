class CreateSaunas < ActiveRecord::Migration[6.0]
  def change
    create_table :saunas do |t|
      t.references  :user,                  null: false, foreign_key: true
      t.timestamps
      t.string      :name,                  null: false
      t.text        :text,                  null: false
      t.integer     :price,                 null: false
      t.integer     :temperature,           null: false
      t.integer     :humidity,              null: false
      t.integer     :cool_bath_temperature, null: false
      t.integer     :category_id,           null: false
      t.string      :postcode,              null: false
      t.integer     :prefecture_id,         null: false
      t.string      :city,                  null: false
      t.string      :block,                 null: false
      t.string      :building,              null: false
      t.string      :phone_number,          null: false
    end
  end
end
