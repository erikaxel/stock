Rails.application.routes.draw do

  mount Stock::Engine => "/stock"
end
