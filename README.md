# grunt-i18n-static

Grunt task for [node-static-i18n](https://github.com/claudetech/node-static-i18n). This will add a task `i18n` to your Grunt tasks.

## Installation

```sh
$ npm install --save-dev grunt-i18n-static
```

## Usage

Sample configuration:

```javascript
module.exports = function (grunt) {
  grunt.initConfig({
    i18n: {
      dist: {
        options: {
          baseDir: 'www',
          outputDir: 'public',
        }
      },
      options: {
        fileFormat: 'yml',
        exclude: ['components/'],
        locales: ['en', 'fr'],
        locale: 'en',
        localesPath: 'locales'
      }
    }
  });
  grunt.loadNpmTasks('grunt-i18n-static');
};
```

with a project structure looking like this:

```sh
$ tree
.
├── Gruntfile.js
├── locales
│   ├── en.yml
│   └── fr.yml
├── package.json
└── www
    └── index.html
```

See [node-static-i18n](https://github.com/claudetech/node-static-i18n)  documentation for more information.
