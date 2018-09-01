Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#home'
  get "gaggle" => "gaggle#gaggle"
  get "eddit" => "eddit#eddit"
  get "metube" => "metube#metube"
  get "tempkilo" => "tempkilo#tempkilo"
  get "metube_paginate" => "metube#pagination"
  get "rikipeida" => "rikipeida#rikipeida"
  get "gethub" => "gethub#gethub"
  get "webfliks" => "webfliks#webfliks"
  get "wahoo" => "wahoo#wahoo"
end
