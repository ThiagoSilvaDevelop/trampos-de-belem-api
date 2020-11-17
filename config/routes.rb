Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # ROTAS PARA EMPRESAS

    # post '/cadastrar-anunciante', to: 'users#create'
    resource :users, only: [:create]

    resource :register_vacancies, only: [:create]

    get '/vacancies_total', to: 'register_vacancies#vacancies_total'

    get '/vacancies', to: 'register_vacancies#vacancies'

    get '/vacancies_for_candates', to: 'register_vacancies#vacancies_for_candates'

    get '/find_vacancy/:id', to: 'register_vacancies#find_vacancy'

    get '/find_vacancy_public/:id', to: 'register_vacancies#find_vacancy_public'

    put '/update_vacancy/:id', to: 'register_vacancies#update'

    put '/update_vacancy/:id', to: 'register_vacancies#update'

  # ROTAS ABERTAS PARA CANDIDATADOS
    get '/auto_login', to: 'users#auto_login'

    get '/get_advertiser/:id', to: 'users#get_advertiser'

    # get '/vacancies', to: 'books#vacancies'

    get '/index', to: 'users#index'

    post '/login', to: 'users#login'
end
