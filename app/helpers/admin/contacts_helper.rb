module Admin::ContactsHelper
  def link_to_view(resource)
    link_to_with_icon('view', t('view'), object_url(resource))
  end
end