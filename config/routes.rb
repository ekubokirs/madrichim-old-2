Madrichim::Application.routes.draw do
 get 'search/:query' => 'twitter#search'
end
