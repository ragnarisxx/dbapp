class TblxRefrigerantType < ActiveRecord::Base
    self.table_name = 'tblxRefrigerantType'
    self.primary_key = :RtID

    has_many :tblrefrigerants, :class_name => 'TblRefrigerant', :foreign_key => :RtID
end
