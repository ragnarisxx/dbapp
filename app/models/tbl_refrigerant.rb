class TblRefrigerant < ActiveRecord::Base
    self.table_name = 'tblRefrigerant'
    self.primary_key = :RID

    belongs_to :tblxrefrigeranttype, :class_name => 'TblxRefrigerantType', :foreign_key => :RtID
end
