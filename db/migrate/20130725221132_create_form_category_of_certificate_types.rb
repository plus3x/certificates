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
end
