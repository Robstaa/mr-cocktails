Rails.application.routes.draw do

  resources(:doses, only: [:destroy, :show])

  resources(:cocktails, only: [:new, :create, :index, :show]) do
    resources(:doses, only: [:new, :create]) do
      get 'doses', to: 'cocktails#doses'
    end
  end

  root('cocktails#index')
end
