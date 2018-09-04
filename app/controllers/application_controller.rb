class ApplicationController < ActionController::API
  def limit_param
    params[:per_page].blank? ? 10 : params[:per_page].to_i
  end

  def offset_param
    params[:page_no].blank? ? 0 : params[:page_no].to_i
  end
end
