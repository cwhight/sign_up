class AddSignUpToSectorJoiner < ActiveRecord::Migration[5.2]
  def change
    add_reference :sector_joiners, :sign_ups, foreign_key: true
  end
end
