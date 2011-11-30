// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){
   $('#main_tabs').tabs({
    onBeforeClose:function(title){
        GT2ICROCX.Stop();
    }
  });
})

function person_info_collect(){
    var main_tabs =  $('#main_tabs');
    if(main_tabs.tabs('exists','人员信息采集')){
       main_tabs.tabs('select','人员信息采集');
    }else{
      main_tabs.tabs('add',{
        title:'人员信息采集',
        href:'/person/new',
          closable:true
      });
    }
}
