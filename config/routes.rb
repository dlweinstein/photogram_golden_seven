Rails.application.routes.draw do
  #devise_for :admin_users, ActiveAdmin::Devise.config
  #ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # ROUTES FOR CREATING
  get("/photos/new", {
    :controller => "photos",
    :action => "new_form"
    })

    get("create_photo", {
      :controller => "photos",
      :action => "create_row"
      })


      # ROUTES FOR READING
      get("photos", {
        :controller => "photos",
        :action => "index"
        })

        get("photos/:the_id", {
          :controller => "photos",
          :action => "show"
          })

          # ROUTES FOR UPDATING
          get("photos/:the_id/edit", {
            :controller => "photos",
            :action => "edit_form"
            })

            get("update_photo/:the_id/", {
              :controller => "photos",
              :action => "update_row"
              })

              #ROUTE FOR DELETING
              get("delete_photo/:the_id/", {
                :controller => "photos",
                :action => "delete_row"
                })

              end
