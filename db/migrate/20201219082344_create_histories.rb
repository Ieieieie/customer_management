class CreateHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :histories do |t|
      t.string :name
      t.string :yomigana
      t.string :telno, default: ""
      t.string :cemetery_name, default: ""
      t.string :section, default: ""
      t.text :contract_details
      t.text :remarks

      t.timestamps
    end
  end
end
