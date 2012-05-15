class Admin::TopicsController < Spree::Admin::ResourceController
  resource_controller
  
  create.wants.html {redirect_to collection_path}
  update.wants.html {redirect_to collection_path}
  
  new_action.response do |wants|
    wants.html {render :action => :new, :layout => !request.xhr?}
  end
  
end