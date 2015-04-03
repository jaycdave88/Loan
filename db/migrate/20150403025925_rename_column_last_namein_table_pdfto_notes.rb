class RenameColumnLastNameinTablePdftoNotes < ActiveRecord::Migration
  def change
  	rename_column :pdfs, :last_name, :notes
  end
end
