class RenameProtiensToProteins < ActiveRecord::Migration[6.1]
  def change
    rename_column :entries, :protiens, :proteins
  end
end
