Rails.application.routes.draw do
  resources :locations
  resources :ssshh_o_matics
  resources :air_quality_machines
  resources :ssshh_o_matics_records, only: %i[index create]
  resources :air_quality_machines_records, only: %i[index create]
end
