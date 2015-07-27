class PagesController < ApplicationController
  def home
    
  end
  def search
     tbl_company = TblCompany.find(name: params[:q])
    
  end
end