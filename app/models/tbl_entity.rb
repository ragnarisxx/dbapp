class TblEntity < ActiveRecord::Base
    self.table_name = 'tblEntity'
    self.primary_key = :EID

    belongs_to :tblcompany, :class_name => 'TblCompany', :foreign_key => :CID
    belongs_to :tblindividual, :class_name => 'TblIndividual', :foreign_key => :ID
end
