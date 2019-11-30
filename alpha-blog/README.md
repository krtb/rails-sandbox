# Alpha Blog

Basic blog demponstrating use of rails CRUD operations

## Creating a route
1) create route path in `routes.rb`
   1) add an action, `welcom#home`
2) create controller in `app/controllers`
   1) inherit from `ApplicationController`
3) Add action/method, like `#home`
4) Add View in `views`
   1) add file as .html.erb

# Issues & Solutions
* Issue 1
  * Missing app/assets/javascripts/application.js folder/file in Rails 6
* Solution 1
  * [Medium Blog Post](https://medium.com/@guilhermepejon/how-to-install-bootstrap-4-3-in-a-rails-6-app-using-webpack-9eae7a6e2832)
  * use & configure Webpack
  * `yarn add bootstrap@4.3.1 jquery popper.js`
  * import only styles that are needed, not entire Node folder
  * Created
    * javascript/stylesheets fodler
      * application.scss
        * `@import './bootstrap_custom.scss';`
      * bootstrap_custom.scss
        * `@import specific components`
      * javascript/packs
        * application.js
          * `import '../stylesheets/application'`
          * `import './bootstrap_custom.js'`
        * bootstrap_custom.js
          * `@import specific components`
  * Layouts
    * application.html.erb file
      * `<%= stylesheet_pack_tag 'application', media: 'all', 'data-turbolinks-track': 'reload' %>`
      * `<%= javascript_pack_tag 'application', 'data-turbolinks-track': 'reload' %> `
  * webpack/environment.js
```js
  const webpack = require('webpack')
environment.plugins.append(
    'Provide',
    new webpack.ProvidePlugin({
        $: 'jquery',
        jQuery: 'jquery',
        Popper: ['popper.js', 'default']
    })
)
```
* Foreman
  * Command to start
    * `foreman start -f Procfile.dev`