Rails.application.routes.draw do
	scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
		get 'empresa', to: 'static_pages#enterprise'
		get 'contacto', to: 'static_pages#contact'
		get 'proyectos', to: 'static_pages#proyects'
		get 'proyectos/turbina', to: 'projects#turbina'

		root 'static_pages#home'
	end	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
