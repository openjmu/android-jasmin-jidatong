.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$5
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/onComplete(ILjava/lang/Object;Ljava/lang/String;J)V
.inner class private ServerCallback inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback outer com/android/u/weibo/weibo/ui/activity/CommentListActivity
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$5

.field final synthetic 'this$1' Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;

.field final synthetic 'val$retweetList' Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$5/this$1 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
aload 0
aload 2
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$5/val$retweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$5/val$retweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$5/this$1 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/forwards I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$5/val$retweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
getfield com/android/u/weibo/weibo/business/bean/TopicInfoList/mTotal I
if_icmpeq L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$5/this$1 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$5/val$retweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
getfield com/android/u/weibo/weibo/business/bean/TopicInfoList/mTotal I
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/forwards I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$5/this$1 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$1900(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$5/this$1 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/num_transmit I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$5/this$1 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/forwards I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$5/this$1 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$400(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Landroid/content/Context;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$5/this$1 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$5/this$1 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/forwards I
bipush -2
bipush -2
bipush -2
iconst_0
aconst_null
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/sendRefreshDataBroadCast(Landroid/content/Context;JIIIIZLjava/lang/String;)V
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$5/this$1 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$5/val$retweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
putfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mRetweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$5/this$1 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mType Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
getstatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/RETWEET Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
if_acmpne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$5/this$1 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$1400(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)V
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$5/this$1 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/stopProgress()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$5/this$1 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$1200(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/onRefreshComplete()V
return
.limit locals 1
.limit stack 9
.end method
