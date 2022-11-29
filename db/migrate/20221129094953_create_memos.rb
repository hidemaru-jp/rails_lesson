class CreateMemos < ActiveRecord::Migration[6.1]
  def change
    create_table :memos do |t|
      t.string :title ,null: false,default:"無題"
      t.text :content 
      t.timestamps
    end
  end
end
