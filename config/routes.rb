Rails.application.routes.draw do

	get 'empresa', to: 'static_pages#enterprise'
	get 'contacto', to: 'static_pages#contact'
	get 'proyectos', to: 'static_pages#proyects'
	get 'proyectos/turbina', to: 'projects#turbina'

	root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
