'use strict';

angular.module('app', [
  # Angular modules
  'ngRoute'
  'ngAnimate'

  # 3rd Party Modules
  'ui.bootstrap'
  'easypiechart'
  'textAngular'
  'ui.tree'
  'ngMap'
  'ngTagsInput'

  # Custom modules
  'app.controllers'
  'app.directives'
  'app.localization'
  'app.nav'
  'app.ui.ctrls'
  'app.ui.directives'
  'app.ui.services'
  'app.ui.map'
  'app.form.validation'
  'app.ui.form.ctrls'
  'app.ui.form.directives'
  'app.tables'
  'app.task'
  'app.chart.ctrls'
  'app.chart.directives'
  'app.page.ctrls'

  # Controller của Lab Coder
  'app.board.ctrls'
  'app.login.ctrls'
  'app.user.ctrls'
])

.config([
    '$routeProvider'
    ($routeProvider) ->
      routes = [
        # Router default UI ToolKit
        'dashboard'
        'ui/typography', 'ui/buttons', 'ui/icons', 'ui/grids', 'ui/widgets', 'ui/components', 'ui/timeline',
        'ui/nested-lists', 'ui/pricing-tables', 'ui/maps'
        'tables/static', 'tables/dynamic', 'tables/responsive'
        'forms/elements', 'forms/layouts', 'forms/validation', 'forms/wizard'
        'charts/charts', 'charts/flot', 'charts/morris'
        'pages/404', 'pages/500', 'pages/blank', 'pages/forgot-password', 'pages/invoice', 'pages/lock-screen',
        'pages/profile', 'pages/signin', 'pages/signup'
        'mail/compose', 'mail/inbox', 'mail/single'
        'tasks/tasks',

        #Router của Lab Coder
        'login/login',               # Đăng nhập
        'learning/board',            # Chat Realtime
        'user/profile',              # Thông tin học viên
        'user/invoices',             # Thông tin học phí
        'courses/collection-nodejs'  # Thông tin khóa học hiện tại.
        'courses/angularjs'          # Thông tin khóa học Angular
        'courses/professional-nodejs'# Thông tin khóa học Pro Node.js
      ]

      setRoutes = (route) ->
        url = '/' + route
        config =
          templateUrl: 'views/' + route + '.html'

        $routeProvider.when(url, config)
        return $routeProvider

      routes.forEach((route) ->
        setRoutes(route)
      )

      $routeProvider
      .when('/', { redirectTo: '/learning/board'})
      .when('/404', { templateUrl: 'views/pages/404.html'})
      .otherwise(redirectTo: '/404')
  ])