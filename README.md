# grunt-html-glob

Grunt task for [glob-html](https://github.com/claudetech/node-glob-html).

Sample configuration:

```javascript
module.exports = function (grunt) {
  grunt.initConfig({
    glob: {
      dev: {
        files: [{
          expand: true,
          cwd: 'public',
          src: ['**/*.html'],
          dest: 'public',
          ext: '.html'
        }]
      },
      options: {
        cssPrefix: 'stylesheets',
        jsPrefix: 'scripts'
      }
    }
  });

  grunt.loadNpmTasks('grunt-html-glob');
};
```

See [glob-html](https://github.com/claudetech/node-glob-html) documentation for more information.
