module.exports ={
  entry: ['webpack/hot/dev-server', './src/main.js'],
  output: {
    path: 'dist',
    filename: 'bundle.js',
    publicPath: '/dist/'
  },
  devServer: {
    inline: true,
    port: 3000
  },
  module: {
    loaders: [
      {
        test: /\.js/,
        exclude: /node_modules/,
        loader: 'babel',
        query: {
          presets: ['es2015', 'react']
        }
      }
    ]
  },
  resolve: {
    extensions: ['', '.js', '.es6']
  }
}
