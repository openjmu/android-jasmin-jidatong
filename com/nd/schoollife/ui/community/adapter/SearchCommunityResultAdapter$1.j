.bytecode 50.0
.class synchronized com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.inner class inner com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter;

.field final synthetic 'val$communityID' J

.method <init>(Lcom/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter;J)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter$1/this$0 Lcom/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter;
aload 0
lload 2
putfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter$1/val$communityID J
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter$1/this$0 Lcom/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter;
invokestatic com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/access$100(Lcom/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter;)Landroid/content/Context;
ldc com/nd/schoollife/ui/community/activity/CommunityHomeActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "LONG_TEAM_OR_COMMUNITY_ID"
aload 0
getfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter$1/val$communityID J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter$1/this$0 Lcom/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter;
invokestatic com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/access$100(Lcom/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method
