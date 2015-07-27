class TblJob_material < ActiveRecord::Base
    self.table_name = 'tblJob Materials'


    belongs_to :tbljob, :class_name => 'TblJob', :foreign_key => :JID
end
