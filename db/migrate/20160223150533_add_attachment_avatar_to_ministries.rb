class AddAttachmentAvatarToMinistries < ActiveRecord::Migration
  def self.up
    change_table :ministries do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :ministries, :avatar
  end
end
