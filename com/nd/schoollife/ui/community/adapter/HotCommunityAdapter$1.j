.bytecode 50.0
.class synchronized com/nd/schoollife/ui/community/adapter/HotCommunityAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/community/adapter/HotCommunityAdapter/bindData(ILcom/nd/schoollife/ui/community/adapter/HotCommunityAdapter$ViewHolder;)V
.inner class inner com/nd/schoollife/ui/community/adapter/HotCommunityAdapter$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/community/adapter/HotCommunityAdapter;

.field final synthetic 'val$bean' Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;

.method <init>(Lcom/nd/schoollife/ui/community/adapter/HotCommunityAdapter;Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/adapter/HotCommunityAdapter$1/this$0 Lcom/nd/schoollife/ui/community/adapter/HotCommunityAdapter;
aload 0
aload 2
putfield com/nd/schoollife/ui/community/adapter/HotCommunityAdapter$1/val$bean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/community/adapter/HotCommunityAdapter$1/this$0 Lcom/nd/schoollife/ui/community/adapter/HotCommunityAdapter;
invokestatic com/nd/schoollife/ui/community/adapter/HotCommunityAdapter/access$100(Lcom/nd/schoollife/ui/community/adapter/HotCommunityAdapter;)Landroid/content/Context;
ldc com/nd/schoollife/ui/community/activity/CommunityHomeActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "LONG_TEAM_OR_COMMUNITY_ID"
aload 0
getfield com/nd/schoollife/ui/community/adapter/HotCommunityAdapter$1/val$bean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getId()J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/community/adapter/HotCommunityAdapter$1/this$0 Lcom/nd/schoollife/ui/community/adapter/HotCommunityAdapter;
invokestatic com/nd/schoollife/ui/community/adapter/HotCommunityAdapter/access$200(Lcom/nd/schoollife/ui/community/adapter/HotCommunityAdapter;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method
