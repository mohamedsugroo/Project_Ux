if (typeof(CKEDITOR) != 'undefined') {
  CKEDITOR.editorConfig = function (config) {
      config.toolbar = [
          { name: 'document', items: [ 'Source', '-' ] },
          { name: 'basicstyles', items: [ 'Bold', 'Italic' ] },
          { name: 'paragraph', items : [ 'NumberedList','BulletedList','-','Outdent','Indent','-','Blockquote',
  	'-','JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock' ] },
          { name: 'styles', items : [ 'Styles'] },

      ]
  }
};
