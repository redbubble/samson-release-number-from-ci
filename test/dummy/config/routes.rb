Rails.application.routes.draw do

  mount ReleaseNumberFromCi::Engine => "/release_number_from_ci"
end
