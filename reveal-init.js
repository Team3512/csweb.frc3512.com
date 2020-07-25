Reveal.initialize({
  center: false,
  transition: 'none',
  dependencies: [
    { src: '../../../reveal.js/plugin/markdown/marked.js' },
    { src: '../../../reveal.js/plugin/markdown/markdown.js' },
    { src: '../../../reveal.js/plugin/notes/notes.js', async: true },
    { src: '../../../reveal.js/plugin/highlight/highlight.js', async: true, callback: function() { hljs.initHighlightingOnLoad(); } }
  ]
});
