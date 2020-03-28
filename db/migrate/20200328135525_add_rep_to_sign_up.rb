class AddRepToSignUp < ActiveRecord::Migration[5.2]
  def change
    add_column :sign_ups, :rep, :boolean
  end
end
