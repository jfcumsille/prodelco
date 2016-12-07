Rails.application.routes.draw do

	get 'empresa', to: 'staticPages#enterprise'
	get 'contacto', to: 'staticPages#contact'
	get 'proyectos', to: 'staticPages#proyects'

	root 'staticPages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
