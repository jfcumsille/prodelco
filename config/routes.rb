Rails.application.routes.draw do
	scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
		get 'empresa', to: 'static_pages#enterprise'
		get 'contacto', to: 'static_pages#contact'
		get 'proyectos', to: 'static_pages#projects'
		get 'map', to: 'static_pages#map'
		get 'proyectos/edificios', to: 'projects#edificios'
		get 'proyectos/social', to: 'projects#social'
		get 'proyectos/edificios/araucaria', to: 'projects#araucaria'
		get 'proyectos/edificios/altosanfernando', to: 'projects#altoSanFernando'
		post 'postContact', to: 'mails#recibirMail'

		root 'static_pages#home'
	end	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
