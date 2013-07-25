class CreateCategoriesOfCertificateTypes < ActiveRecord::Migration
  def change
    create_table :categories_of_certificate_types do |t|
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
