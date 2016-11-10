var gulp = require('gulp'),
  concatJs = require('gulp-concat'),
  uglifyJs = require('gulp-uglify'),
  concatCss = require('gulp-concat-css'),
  cleanCss = require('gulp-clean-css');
  watch = require('gulp-watch')
  browserSync = require('browser-sync').create();

gulp.task('minificar-js', function() {
  return gulp.src('js/*.js')
    .pipe(concatJs('all.js'))
    .pipe(uglifyJs())
    .pipe(gulp.dest('./js/build/'));
});

gulp.task('minificar-css', function() {
  return gulp.src('css/*.css')
    .pipe(concatCss('all.css'))
    .pipe(cleanCss())
    .pipe(gulp.dest('css/build/'));
});



gulp.task('watch', function() {
  browserSync.init({
    server: {
      baseDir: "./"
    }
  });

    gulp.watch('css/*.css', ['minificar-css']);
    gulp.watch('js/*.js', ['minificar-js']);
    gulp.watch('index.html').on('change',browserSync.reload);
});
