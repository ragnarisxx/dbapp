class TblIndividual < ActiveRecord::Base
    self.table_name = 'tblIndividual'
    self.primary_key = :ID

    has_many :tblentities, :class_name => 'TblEntity', :foreign_key => :ID
end
