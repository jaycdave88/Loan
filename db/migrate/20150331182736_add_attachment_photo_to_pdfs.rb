class AddAttachmentPhotoToPdfs < ActiveRecord::Migration
  def self.up
    change_table :pdfs do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :pdfs, :photo
  end
end
