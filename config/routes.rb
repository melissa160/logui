Rails.application.routes.draw do
	root "pages#show", page: "home"
	devise_for :guides, controllers: {
        sessions: 'guides/sessions'
      }

	devise_for :tourists
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guides
end
