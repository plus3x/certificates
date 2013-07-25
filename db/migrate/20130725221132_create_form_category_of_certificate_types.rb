class CreateFormCategoryOfCertificateTypes < ActiveRecord::Migration
  def self.up
    create_table :forms_names, :id => false do |t|
      t.integer :type_of_sertificate
      t.integer :name
    end
  end

  def self.down
    drop_table :forms_names
  end
  
  def change
    create_table :suppliers do |t|
      t.string :name
      t.timestamps
    end
 
    create_table :accounts do |t|
      t.belongs_to :supplier
      t.string :account_number
      t.timestamps
    end
  end
end
