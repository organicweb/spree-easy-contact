Deface::Override.new(:virtual_path => "spree/layouts/admin",
                      :name => "easy_contact_admin_tab",
                      :insert_bottom => "[data-hook='admin_tabs']",
                      :text => "<%= tab(:contacts, :icon => 'icon-file') %>",
                      :disabled => false)