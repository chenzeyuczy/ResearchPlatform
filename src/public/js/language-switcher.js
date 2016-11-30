$(document).ready(function(){
  var language = 0;
  var user_status_html = ['<strong><a href="/register"><u>注册</u></a></strong> 以登陆研究平台','<strong><a href="/register"><u>Sign up</u></a></strong> to login'];
  var user_status_manage = ['<a href="/#",onclick="javascript:event.target.port=3001">管理</a>',
                                  '<a href="/#",onclick="javascript:event.target.port=3001">Administration</a>'];
  var user_status_exit = ['<a href="/logout">退出</a>', '<a href="/logout">Exit</a>'];
  var user_status_username = ['请输入账号','username'];
  var user_status_password = ['请输入密码','password'];
  var user_status_submit = ['提交','submit'];
  var menu_cn = ['关于项目','研究团队','新闻动态','最新公告','学术交流','数据工具','联系我们'];
  var menu_en = ['Project', 'Team', 'News', 'Notification', 'Symposium', 'Data/Tools', 'Contact'];
  var related_links = ['相关链接','Related Links'];
  var related_links_items_cn = ['NCBI生物医学论文数据库','GISD全球入侵物种数据库','中国外来入侵物种数据库','欧洲生物信息学组织','Ensembl基因组浏览数据库'];
  var related_links_items_en = ['NCBI Dataset','GISD Dataset','DIASC Dataset','EBI Organization','Ensembl Dataset'];
  var authors = ['作者','Authors'];
  var authors_items_cn = ['陈泽宇','陈子恒','陈宇文','丁锦棠','龚科','杨靖'];
  var authors_items_en = ['Chen Zeyu','Chen Ziheng','Chen Yuwen','Ding Jintang','Gong Ke','Yang Jing'];
  var publishment = ['推广公众号','LIKE US IN WECHAT'];
  $("#language-changer-button").click(function(){  
    if(language == 0) {
      language = 1;
    }
    else {
      language = 0;
    }
    $("#user-status").html(user_status_html[language]);
    $("#user-status-manage").html(user_status_manage[language]);
    $("#user-status-exit").html(user_status_exit[language]);
    $("#user-status-username").attr("placeholder",user_status_username[language]);
    $("#user-status-password").attr("placeholder",user_status_password[language]);
    $("#user-status-submit").attr("value",user_status_submit[language]);
    $("#related-links").text(related_links[language]);
    $("#authors").text(authors[language]);
    $("#publishment-img").text(publishment[language]);
    if(language == 0) {
      $(".Menu-a").each(function(index,element){$(this).text(menu_cn[index]);});
      $(".links-item").each(function(index,element){$(this).text(related_links_items_cn[index]);});
      $(".authors-item").each(function(index,element){$(this).text(authors_items_cn[index]);});
    }
    else {
      $(".Menu-a").each(function(index,element){$(this).text(menu_en[index]);});
      $(".links-item").each(function(index,element){$(this).text(related_links_items_en[index]);});
      $(".authors-item").each(function(index,element){$(this).text(authors_items_en[index]);});
    }
  });
});