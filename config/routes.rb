Rails.application.routes.draw do

  resources(:doses, only: [:destroy])

  resources(:cocktails, only: [:new, :create, :index, :show]) do
    resources(:doses, only: [:new, :create])
  end

  root('cocktails#index')
end
