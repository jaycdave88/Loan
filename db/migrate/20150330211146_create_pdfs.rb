class CreatePdfs < ActiveRecord::Migration
  def change
    create_table :pdfs do |t|
      t.string :first_name
      t.string :last_name
      t.integer :loan_ammount
      t.integer :down_payment
      t.integer :intrest_rate

      t.timestamps null: false
    end
  end
end
