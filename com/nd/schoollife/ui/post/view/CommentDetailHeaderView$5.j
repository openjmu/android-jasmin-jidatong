.bytecode 50.0
.class synchronized com/nd/schoollife/ui/post/view/CommentDetailHeaderView$5
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/post/view/CommentDetailHeaderView/initView(Landroid/content/Context;)V
.inner class inner com/nd/schoollife/ui/post/view/CommentDetailHeaderView$5

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;

.method <init>(Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView$5/this$0 Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
astore 1
aload 1
ifnull L0
aload 1
instanceof com/nd/android/forumsdk/business/bean/structure/UserInfoBean
ifeq L0
aload 1
checkcast com/nd/android/forumsdk/business/bean/structure/UserInfoBean
astore 1
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView$5/this$0 Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;
invokestatic com/nd/schoollife/ui/post/view/CommentDetailHeaderView/access$100(Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;)Landroid/content/Context;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
invokestatic com/nd/schoollife/schoollifeinterfaceImpl/CallOtherModel/gotoUserMainActivity(Landroid/content/Context;J)V
L0:
return
.limit locals 2
.limit stack 3
.end method
