<#include "./common/layout.ftl"/>
<@html page_title="加入我们">
<div class="row">
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                <a href="/">主页</a> / 加入我们
            </div>
            <div class="panel-body">
                <div class="col-md-4" style="padding-left: 10px;padding-right: 10px;">
                    <#if errors??>
                        <div class="alert alert-danger">${errors!}</div>
                    </#if>
                    <form class="form-horizontal" role="form" action="/regist" method="post" id="form">
                        <div class="form-group">
                            <label for="username" class="col-sm-3 control-label">昵称</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="username" name="username" placeholder="昵称">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="col-sm-3 control-label">邮箱</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="email" name="email" placeholder="邮箱">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password" class="col-sm-3 control-label">密码</label>

                            <div class="col-sm-9">
                                <input type="password" class="form-control" id="password" name="password"
                                       placeholder="密码">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-9">
                                <button type="submit" class="btn btn-default">注册</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-md-8" style="border-left:1px dashed #C0C0C0;height: 200px;padding-left: 10px;">
                    <div class="alert alert-info">信息！请注意这个信息。</div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(function () {
        $("#form").submit(function () {
            var username = $("#username");
            var email = $("#email");
            var password = $("#password");
            var emailReg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
            if (username.val().length == 0) {
                layer.alert('用户名不能为空', {icon: 2, skin: 'layer-ext-moon', closeBtn: 0});
                username.focus();
                return false;
            }
            if (email.val().length == 0) {
                layer.alert('邮箱不能为空', {icon: 2, skin: 'layer-ext-moon', closeBtn: 0});
                email.focus();
                return false;
            }
            if (!emailReg.test(email.val())) {
                layer.alert('邮件格式不正确', {icon: 2, skin: 'layer-ext-moon', closeBtn: 0});
                email.focus();
                return false;
            }
            if (password.val().length == 0) {
                layer.alert('密码不能为空', {icon: 2, skin: 'layer-ext-moon', closeBtn: 0});
                password.focus();
                return false;
            }
            if (password.val().length < 6 || password.val().length > 15) {
                layer.alert('密码长度介于6-15位之间', {icon: 2, skin: 'layer-ext-moon', closeBtn: 0});
                password.focus();
                return false;
            }
        })
    })
</script>
</@html>