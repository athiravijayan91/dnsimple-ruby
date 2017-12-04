Rails.application.routes.draw do


 
  resources :templates,only: [:index]
  resources :contacts,only: [:index]
  resources :manage_domains,only: [:index]
 
	resources :domains ,only: [:index,:new,:show] do
	  resources :transfers ,:controller => 'domains/transfers',only: [:index,:new]
	  resources :hostings ,:controller => 'domains/hostings',only: [:index,:show,:create]
      resources :registers ,:controller => 'domains/registers',only: [:index,:new,:create]
      resources :dns ,:controller => 'domains/dns', only: [:index]
      resources :ssl_certificates ,:controller => 'domains/ssl_certificates',only: [:index]
      resources :domain_records, :controller => 'domains/domain_records', only: [:index,:new,:create, :destroy,:edit]
      resources :email_forwardings, :controller => 'domains/email_forwardings',only: [:index]
      resources :dnssecs, :controller => 'domains/dnssecs',only: [:index]
      resources :settings, :controller => 'domains/settings', only: [:show]
	  post "settings", { to: "domains/settings#destroy" }
		get "settings", { to: "domains/settings#show" }              
		
	end
	 get "domains/registers", { to: "registers#new" }
	 get "domains/:domain_id/dns", { to: "dns#index" }
	 get "domains/:domain_id/ssl_certificates", { to: "ssl_certificates#index" }
	 get "domains/:domain_id/domain_records", { to: "domain_records#index" }
	 get "domains/:domain_id/email_forwardings", { to: "email_forwardings#index" }
	 get "domains/:domain_id/dnssecs", { to: "dnssecs#index" }
	 # get "domains/:domain_id/settings", { to: "settings#index" }
	 get "domains/:id", { to: "domains#show" }
	                                   


	
	

	

 root 'domains#index'
	
end

