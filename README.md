# TuleBBS_app
图乐论坛
完成功能：注册，登录，退出，论坛发帖，帖子回复，节点，用户之间发送私信，管理员管理论坛可以删除帖子。论坛图片上传
注册功能：为了更好的熟悉rails的实现机制，没有用gem而是选择自己写了一个注册方法通过对user表的操作进行用户注册，同过正则表达式完成邮箱格式的验证。
论坛发帖：通过获取session中的user_id完成发帖功能帖子表名,post
帖子回复：回复表，revert，关联post和user，通过session获得user_id然后创建revert，并且关联post_id从而实现帖子回复。
节点：node表，关联到post表，根据node_id获得节点，并查询该节点下的post并加以显示。
私信：message，用户之间实现私信的发送，发送人:user_id从session中获取
然后根据所咬回复人发表的帖子获得收件人的ID，从而实现私信的发送。
管理论坛：user表用户添加栏位admin设置初始值，为false,然后更新管理员的user.admin为true，然后判断user.admin是否为true如果为true可以进行删除帖子的操作。
图片上传：用到的paperclip这个gem，注意一定要选择好版本，不然会出现很多不必要的麻烦，我选择的是2.8
