Rails.application.routes.draw do

# Need rows for index, show, new_form, create_row, edit_form, update_row, destroy

# HOME---------------------
  get("/", { :controller => "movies", :action => "index"})

# ACTORS-------------------
  # ADD
  get("/actors/new_form", { :controller => "actors", :action => "new_form"})
  get("/create_actor", { :controller => "actors", :action => "create_row"})

  # DELETE
  get("/delete_actor/:id", { :controller => "actors", :action => "destroy"})

  # UPDATE
  get("/actors/:id/edit_form", { :controller => "actors", :action => "edit_form"})
  get("/update_actor/:id", { :controller => "actors", :action => "update_row"})

  # READ
  get("/actors", { :controller => "actors", :action => "index"})
  get("/actors/:id", { :controller => "actors", :action => "show"})

# DIRECTORS----------------
  # ADD
  get("/directors/new_form", { :controller => "directors", :action => "new_form"})
  get("/create_director", { :controller => "directors", :action => "create_row"})

  # DELETE
  get("/delete_director/:id", { :controller => "directors", :action => "destroy"})

  # UPDATE
  get("/directors/:id/edit_form", { :controller => "directors", :action => "edit_form"})
  get("/update_director/:id", { :controller => "directors", :action => "update_row"})

  # READ
  get("/directors", { :controller => "directors", :action => "index"})
  get("/directors/:id", { :controller => "directors", :action => "show"})

# MOVIES-------------------
  # ADD
  get("/movies/new_form", { :controller => "movies", :action => "new_form"})
  get("/create_movie", { :controller => "movies", :action => "create_row"})

  # DELETE
  get("/delete_director/:id", { :controller => "movies", :action => "destroy"})

  # UPDATE
  get("/movies/:id/edit_form", { :controller => "movies", :action => "edit_form"})
  get("/update_movie/:id", { :controller => "movies", :action => "update_row"})

  # READ
  get("/movies", { :controller => "movies", :action => "index"})
  get("/movies/:id", { :controller => "movies", :action => "show"})

end
