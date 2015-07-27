class TblCompany < ActiveRecord::Base
    self.table_name = 'tblCompany'
    self.primary_key = :CompanyName
    
  def self.search(query)
    where do
      (name =~ "%#{query}%")
    end
  end
    

    
    
    has_many :tblentities, :class_name => 'TblEntity', :foreign_key => :CID
end
