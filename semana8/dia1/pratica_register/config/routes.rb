Rails.application.routes.draw do
  # get 'phones/index'

  # get 'phones/create'

  # get 'phones/show'

  # get 'phones/update'

  # get 'phones/destroy'

  # get 'profiles/index'

  # get 'profiles/create'

  # get 'profiles/show'

  # get 'profiles/update'

  # get 'profiles/destroy'

  # get 'people/index'

  # get 'people/create'

  # get 'people/show'

  # get 'people/update'

  # get 'people/destroy'

	resources :people do
		resources :profiles
		resources :phones
  end

	# resources :profiles, only: [:new,:create,:index] do
	# 	resources :phones, shallow: true
	# end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
