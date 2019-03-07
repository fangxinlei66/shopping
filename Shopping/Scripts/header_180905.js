/**
 * 20180905
 */
$(function(){
    /**
     * 登录\注册切换
     */
    if ($.cookie('UNAME') && $.cookie('MEMBER_IDENT')) {
        $('.navbar-list .navbar-login,.navbar-list .navbar-register').addClass('hidden');
        $('.navbar-list .navbar-user,.navbar-list .navbar-logout').removeClass('hidden');
        $('.navbar-list .navbar-user span').text($.cookie('UNAME'));
        //$(".fila-load").remove();
    }
    /**
     * 迷你购物车
     */
    /*购物车数量加载*/
    //$.getJSON('/index.php/openapi/cart/count', function (res) {
    //    try {
    //        if (res.data.count > 0) {
    //            $('#cart-count').removeClass('hidden').text(res.data.quantity);
    //        }
    //    } catch (e) {}
    //});
    ///*购物车项*/
    //var load_minicart = function (e) {
    //    if ($('.navbar-cart.dropdown').hasClass('openmini')) {
    //        return;
    //    } else {
    //        var mc_content = $('.navbar-cart.dropdown').find('.dropdown-menu');
    //        mc_content.removeClass('overscrollY');
    //        var item_html = '';
    //        var package_html = '';
    //        if ($('#cart-count').text() == '') {
    //            item_html += '<li class="mini-cart-pay"><div class="mini-cart-null">\
    //                <p>空空的，好桑心！</p><a href="/list/" class="theme-btn">去逛逛</a></div></li>';
    //            mc_content.html(item_html);
    //            return false;
    //        }
    //        var li_loading = '<li class="mini-cart-pay text-center"><h6>加载中...</h6></li>';
    //        mc_content.html(li_loading);
    //        $.getJSON("/index.php/openapi/cart/preview", function (res) {
    //        	try {
    //                if (res.data && res.data.length) {
    //                    $.each(res.data, function (idx, item) {
    //                        if (res.data[idx].package_name) {
    //                            var package_price = parseFloat(item.count_package_price).toFixed(2);
    //                            package_html += '<li class="package-name clearfix">'+res.data[idx].package_name+'<span class="pull-right">'+'&nbsp;x'+res.data[idx].package_quantity + '<span class="ml10"></span>￥'+package_price+'</span>'+'</li>';
    //                            $.each(res.data[idx].item,function(i,k){
    //                                package_html += '<li class="li-item li-item-package"><a href="'+k.product_url+'">\
    //                                    <div class="mini-cart-list"><div class="mini-cart-pic">\
    //                                    <img width="48" height="48" src="'+k.image_url+'"></div>\
    //                                    <div class="mini-cart-con"><p>'+k.name+'</p>\
    //                                    <p><span class="fl mini-price">￥'+k.package_price+'</span><span class="fr mr10">x'+k.count_product+'</span></p>\
    //                                    </div></div></a></li>';
    //                                item_html += package_html;
    //                                if (res.data[idx].item.package_name) {
    //                                    return false;
    //                                }
    //                                package_html = '';
    //                            })
    //                        }else{
    //                            item_html+='<li class="li-item"><a href="'+item.item_url+'">\
    //                                <div class="mini-cart-list"><div class="mini-cart-pic">\
    //                                <img width="48" height="48" src="'+item.image_url+'"></div>\
    //                                <div class="mini-cart-con"><p>'+item.name+'</p>\
    //                                <p><span class="fl mini-price">￥'+item.buy_price+'</span><span class="fr mr10">x'+item.quantity+'</span></p>\
    //                                </div></div></a></li>';
    //                        }
    //                    });
    //                    item_html = '<li class="minicart-main"><ul>' + item_html + '</ul></li>';
    //                    item_html += '<li class="mini-cart-pay"><div class="mini-pay-wrap"><a href="/cart.html" class="btn">查看购物篮</a></div></li>';
    //                    mc_content.html(item_html);
    //                    if (mc_content.children('li').length >= 5) {
    //                        mc_content.addClass('overscrollY');
    //                    }
    //                    /*$('.mini-cart').off('show.bs.dropdown',_self);*/
    //                }
    //            } catch (e) {
    //                console.log(e);
    //            }
    //        });
    //    }
    //};
    //$('.navbar-cart.dropdown').on('mouseenter', load_minicart);
    $('.navbar-cart.dropdown').hover(function () {
        $(this).addClass('openmini');
        $('.mini-cart.dropdown-menu').show();
    }, function () {
        $(this).removeClass('openmini');
        $('.mini-cart.dropdown-menu').hide();
    });
    /*回车搜索*/
    $("#key").keyup(function(e){
        var theEvent = window.event || e;
        if ( theEvent && theEvent.preventDefault )
            theEvent.preventDefault();
        else
            window.event.returnValue = false;
        var code = theEvent.keyCode || theEvent.which;
        if(code==13){
            window.location.href=window.location.protocol+'//'+window.location.host+'/list/?'+'keyword='+$('#key').val();
        }
    });
});

/*小能客服*/
var is_NTKF = false;
function xiaoneng_isExitsFunction() {
	NTKF_PARAM = {
			siteid: "at_1000",                       /*企业id*/
			settingid: "at_6666_9999",      /*应答客服组id，在客户端生成代码界面创建*/
			uid: $.cookie('MEMBER_IDENT'),           /*用户id，登录用户必填，游客为空字符串*/
			uname: $.cookie('UNAME'),               /*用户名，登录用户必填，游客为空字符串*/
			isvip: $.cookie('MEMBER_IDENT') ? 1 : 0,   /*是否为vip用户，登录用户可选，游客为"0"*/
			userlevel: $.cookie('MEMBER_LEVEL_ID')  /*网站用户级别，登录用户可选，游客不填*/
	};
	if(is_NTKF){
		xiaoneng_submit();
	}else{
		$.getScript('http://dl.ntalker.com/js/xn6/ntkfstat.js?siteid=at_1000',function(){
			is_NTKF = true;
			xiaoneng_submit();
		});
	}
}
function xiaoneng_submit() {
	try {
		if (typeof(eval(xiaoneng_openInPageChat)) == "function") {
			xiaoneng_openInPageChat();
			NTKF.im_openInPageChat();
		}
	}catch(e){
		NTKF.im_openInPageChat();
	}
}