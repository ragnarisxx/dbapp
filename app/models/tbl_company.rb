class TblCompany < ActiveRecord::Base
    self.table_name = 'tblCompany'
    self.primary_key = :CID
    
  
    

    
    
    has_many :tblentities, :class_name => 'TblEntity', :foreign_key => :CID
end
