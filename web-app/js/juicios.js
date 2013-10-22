
var myAppModule = angular.module('myApp',[]);

// config
myAppModule.config(function($routeProvider){
	$routeProvider.
			when('/',{
					controller:ItemController,
					templateUrl:'juicios/list.html'
				}).
			when('/juicios/create/',{
					controller:ItemController,
					templateUrl:'juicios/new.html'}).
			when('/juicios/edit/:id',{
					controller:ItemController,
					templateUrl:'juicios/edit.html'}).
			otherwise( {
					redirectTo:'/'} 
					);
});



function JuicioListController($scope,$http){
	$http.get('juicio?format=json').
		success(function(data,status,header,config){
			$scope.juicios  = data;
		}
	);
}

function JuicioController($scope){
	$scope.newJuicio = function(){

		
	}
	
}


function ItemController($scope){

	
}