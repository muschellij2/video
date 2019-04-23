HTMLWidgets.widget({

  name: 'video',

  type: 'output',

  factory: function(el, width, height) {

    // TODO: define shared variables for this instance

    return {

      renderValue: function(x) {

        console.log("x id are ");
        console.log(x.id);
        console.log("x video are ");
        console.log(x.video);

        console.log("el ");
        console.log(el);
        console.log("innertext");
        console.log(el.innerText);


        $(el).append('<video id="'+x.id+'" controls preload="auto" class="video-js"'+">"+'<source src="'+x.video+'" type="video/mp4"></source>'+'</video>');
        // data-setup='{}'
        // $(el).append(x.id);
        // $(el).append('" class="video-js" ');
        // $(el).append(" data-setup='{}'>");
        //$(el).append('<source src="'+x.video+'" type="video/mp4"></source>') ;
        //$(el).append('</video>') ;

        videojs(x.id);
        // videojs(document.querySelector('.video-js'));

      },

      resize: function(width, height) {

        // TODO: code to re-render the widget with a new size

      }


    };
  }
});
