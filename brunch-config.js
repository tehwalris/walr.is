module.exports = {
  paths: {
    watched: ['src'],
    public: 'dist',
  },
  files: {
    stylesheets: {
      joinTo: 'main.css',
    },
  },
  plugins: {
    htmlPages: {
      destination(path) {
        return path.replace(/^src[\/\\](.*)\.html$/, "$1.html");
      },
    },
  },
}
