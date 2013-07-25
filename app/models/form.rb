class Form < ActiveRecord::Base
  attr_accessible :actual_address, :address_on_english, :auditors_names, :bank, :bank_person, :bik, :categories_list_of_works, :company, :correspondent_account, :creator, :current_account, :email, :fax, :inn, :kpp, :ogrn, :phone, :registered_address, :type_of_legal_entity, :type_of_sertificate
end
