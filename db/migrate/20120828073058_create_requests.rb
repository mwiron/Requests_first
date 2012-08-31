class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :request
      t.string :verantwortlicherITSG
      t.string :verantwortlicherGKVfachl
      t.string :verantwortlicherGKVit
      t.string :verantwortlicherTD
      t.string :realisierungTD
      t.integer :KST
      t.string :beschreibung
      t.string :sonderstatus
      t.date :analyse_und_design
      t.date :fachl_freigabe_implementierung
      t.date :tech_freigabe_implementierung
      t.date :fachl_freigabe_implementierung
      t.date :abnahme_teradata
      t.date :fachliche_abnahme
      t.date :technische_abnahme
      t.date :migration
      t.date :produktion
      t.date :ziel_migration

      t.timestamps
    end
    
  end
  
end
