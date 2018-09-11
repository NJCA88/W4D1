class MergeNameEmail < ActiveRecord::Migration[5.2]
  def change
    # validates :username , presence: true, uniqueness: true
    remove_column :users, :name
    remove_column :users, :email
    add_column :users, :username, :string, unique: true
  end
end
