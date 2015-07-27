class TblJob_unit < ActiveRecord::Base
    self.table_name = 'tblJob Unit'
    self.primary_key = :JuID

    belongs_to :tbljob, :class_name => 'TblJob', :foreign_key => :JID
end
