class TblJob < ActiveRecord::Base
    self.table_name = 'tblJob'
    self.primary_key = :JID

    has_many :tbljob_materials, :class_name => 'TblJob_material', :foreign_key => :JID
    has_many :tbljob_units, :class_name => 'TblJob_unit', :foreign_key => :JID
    has_many :tbljob_work_orders, :class_name => 'TblJob_work_order', :foreign_key => :JID
end
