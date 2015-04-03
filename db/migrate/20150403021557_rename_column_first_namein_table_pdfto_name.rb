class RenameColumnFirstNameinTablePdftoName < ActiveRecord::Migration
  def change
  	rename_column :pdfs, :first_name, :name
  end
end
