class Admin::TopicsController < Spree::Admin::ResourceController
   def model_class
    ::Topic
  end

  def new_object_url(options = {})
    main_app.new_polymorphic_url([:admin, model_class], options)
  end

  def edit_object_url(object, options = {})
    main_app.edit_admin_topic_url object, options
  end

  def object_url(object = nil, options = {})
    main_app.admin_topic_url object, options
  end

  def collection_url(options = {})
    main_app.polymorphic_url([:admin, model_class], options)
  end
end