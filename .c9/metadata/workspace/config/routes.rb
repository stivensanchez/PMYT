{"filter":false,"title":"routes.rb","tooltip":"/config/routes.rb","undoManager":{"mark":2,"position":2,"stack":[[{"group":"doc","deltas":[{"start":{"row":2,"column":1},"end":{"row":8,"column":26},"action":"remove","lines":[" get 'static_pages/home'","","  get 'static_pages/help'","","  get 'static_pages/contact'","","  get 'static_pages/about'"]},{"start":{"row":2,"column":1},"end":{"row":7,"column":33},"action":"insert","lines":["  match '/home', to: 'static_pages#home',  via: 'get'","  match '/help',\tto: 'static_pages#help',  via: 'get'","  match '/about',   to: 'static_pages#about',  via: 'get'","  match '/contact', to: 'static_pages#contact',  via: 'get'","","  root :to => 'static_pages#home'"]}]}],[{"group":"doc","deltas":[{"start":{"row":2,"column":2},"end":{"row":2,"column":3},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":94,"column":2},"end":{"row":94,"column":3},"action":"insert","lines":["#"]}]}]]},"ace":{"folds":[],"scrolltop":1348,"scrollleft":0,"selection":{"start":{"row":94,"column":3},"end":{"row":94,"column":3},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1425593743190,"hash":"56cf06664e143719c9acd819ca0a0adf31df370d"}