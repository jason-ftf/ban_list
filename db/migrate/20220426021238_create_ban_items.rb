class CreateBanItems < ActiveRecord::Migration[7.0]
  def change
    create_table :ban_items do |t|
      t.string :email
      t.string :ip

      t.timestamps
    end
  end
end
