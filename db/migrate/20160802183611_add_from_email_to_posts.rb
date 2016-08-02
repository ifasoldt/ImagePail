class AddFromEmailToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :from_email, :string
  end
end
