class Removejobfromsectorjoiner < ActiveRecord::Migration[5.2]
  def change
    remove_reference :sector_joiners, :job, foreign_key: true
  end
end
