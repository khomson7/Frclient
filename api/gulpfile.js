const gulp = require('gulp')
const clean = require('gulp-clean')
const ts = require('gulp-typescript')
const sourcemaps = require('gulp-sourcemaps')
const uglify = require('gulp-uglify')
const pipeline = require('readable-stream').pipeline

const tsProject = ts.createProject('tsconfig.json')

//complicode tyscript .ts
gulp.task('complie',function() {
    const tsResult = tsProject.src()
    .pipe(sourcemaps.init())
    .pipe(tsProject())
    return tsResult.js
    .pipe(sourcemaps.write())
    .pipe(gulp.dest('./tmp/dist'))
})

 //path js file
gulp.task('uglify',function() {
  return pipeline(
      gulp.src('./tmp/dist/**/*.js'),
      uglify(),
      gulp.dest('dist')
  )
})

//delete ./tmp file
gulp.task('clean',function() {
    return gulp.src('./tmp',{read: false})
    .pipe(clean())
})

gulp.task('default',gulp.series('complie','uglify','clean'))

