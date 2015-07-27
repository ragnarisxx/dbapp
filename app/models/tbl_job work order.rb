class TblJob_work_order < ActiveRecord::Base
    self.table_name = 'tblJob Work Order'


    belongs_to :tbljob, :class_name => 'TblJob', :foreign_key => :JID
end
