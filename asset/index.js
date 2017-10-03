define(['oxjs'], function(OXJS) {
    return {
        init: function($mod) {

            var productRest = OXJS.useREST('product').setDevHost('http://dev.openxsl.com/'); //md5('saomachetie')

            var lastLi;
            $mod.on('swipeLeft', 'li', function(e) {
                //console.log('sssss');
                lastLi = $(this).addClass('show-op')
            }).on('tap', function(e) {
                var tar = $(e.target);
                if (tar.hasClass('J_del')) {
                    var $li = tar.closest('li'),
                        id = $li.attr('data-id');
                    productRest.del({
                        _id: id
                    }, function(r) {
                        if (r.code == 0) {
                            //console.log('gggood!')
                            OXJS.toast('OK!')
                            $li.remove();
                        } else {
                            OXJS.toast(r.message)
                        }
                    });
                } else {
                    if (lastLi) {

                        lastLi.removeClass('show-op')
                        lastLi = null;
                    }
                }

            })


        }
    }
})