<!DOCTYPE html>
<html lang="en" ng-app="myApp">
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>
                    <g:layoutTitle default="Shopping List (Grails + AngularJS + Bootstrap)"/>
                </title>

                <script src="${resource(dir: 'js/angular-1.0.8', file: 'angular.js')}"></script>
                <script src="${resource(dir: 'js', file: 'juicios.js')}"></script>

                <r:require modules="bootstrap"/>
                <g:layoutHead/>
                <r:layoutResources />
        </head>
        <body>
            <g:layoutBody/>
            <r:layoutResources />
        </body>
</html>