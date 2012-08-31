class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.binary :document

      t.timestamps
    end
    add_column :requests, :document_id, :integer
  end
   def down
    drop_table :documents
    remove_column :requests, :document_id
  end
end
