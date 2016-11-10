var webpack = require('webpack');

module.exports = {
  entry: ['webpack/hot/dev-server', './src/index.js'],
  output: {
    path: 'dist',
    filename: 'bundle.js',
    publicPath: '/dist/'
  },
  devServer: {
    inline: true
  },
  module: {
    loaders: [
      {
        test: /\.js$/,
        exclude: /(node_modules)/,
        loader: 'babel', // 'babel-loader' is also a valid name to reference
        query: {
          presets: ['es2015']
        }
      }
    ]
  },
  resolve: {
    extensions: ['', '.js', '.es6']
  },
  plugins: [
    new webpack.ProvidePlugin({
      $: "jquery",
      jQuery: "jquery"
    })
  ]
};