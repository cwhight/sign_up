class AddSignUpsToSectorJoiner < ActiveRecord::Migration[5.2]
  def change
    add_reference :sector_joiners, :sign_up, foreign_key: true
  end
end
