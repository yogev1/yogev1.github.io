class AddAttributesToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :name, :string
    add_column :contacts, :email, :string
    add_column :contacts, :message, :string
    add_column :contacts, :nickname, :string
  end
end
