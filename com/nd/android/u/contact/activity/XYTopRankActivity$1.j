.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYTopRankActivity$1
.super android/os/Handler
.enclosing method com/nd/android/u/contact/activity/XYTopRankActivity
.inner class inner com/nd/android/u/contact/activity/XYTopRankActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYTopRankActivity;

.method <init>(Lcom/nd/android/u/contact/activity/XYTopRankActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYTopRankActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYTopRankActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
lookupswitch
0 : L0
1 : L1
100 : L2
default : L3
L3:
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
L4:
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYTopRankActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYTopRankActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/XYTopRankActivity/access$002(Lcom/nd/android/u/contact/activity/XYTopRankActivity;I)I
pop
aload 0
getfield com/nd/android/u/contact/activity/XYTopRankActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYTopRankActivity;
invokestatic com/nd/android/u/contact/activity/XYTopRankActivity/access$100(Lcom/nd/android/u/contact/activity/XYTopRankActivity;)V
aload 0
getfield com/nd/android/u/contact/activity/XYTopRankActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYTopRankActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/XYTopRankActivity/access$200(Lcom/nd/android/u/contact/activity/XYTopRankActivity;I)V
goto L3
L1:
aload 0
getfield com/nd/android/u/contact/activity/XYTopRankActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYTopRankActivity;
iconst_1
invokestatic com/nd/android/u/contact/activity/XYTopRankActivity/access$002(Lcom/nd/android/u/contact/activity/XYTopRankActivity;I)I
pop
aload 0
getfield com/nd/android/u/contact/activity/XYTopRankActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYTopRankActivity;
invokestatic com/nd/android/u/contact/activity/XYTopRankActivity/access$100(Lcom/nd/android/u/contact/activity/XYTopRankActivity;)V
aload 0
getfield com/nd/android/u/contact/activity/XYTopRankActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYTopRankActivity;
iconst_1
invokestatic com/nd/android/u/contact/activity/XYTopRankActivity/access$200(Lcom/nd/android/u/contact/activity/XYTopRankActivity;I)V
goto L3
L2:
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/RankFilterInfo
astore 2
aload 2
ifnull L4
aload 0
getfield com/nd/android/u/contact/activity/XYTopRankActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYTopRankActivity;
invokestatic com/nd/android/u/contact/activity/XYTopRankActivity/access$000(Lcom/nd/android/u/contact/activity/XYTopRankActivity;)I
ifne L5
aload 0
getfield com/nd/android/u/contact/activity/XYTopRankActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYTopRankActivity;
invokestatic com/nd/android/u/contact/activity/XYTopRankActivity/access$300(Lcom/nd/android/u/contact/activity/XYTopRankActivity;)Lcom/nd/android/u/contact/view/TopRankFlowerView;
aload 2
invokevirtual com/nd/android/u/contact/view/TopRankFlowerView/setFilter(Lcom/product/android/commonInterface/contact/RankFilterInfo;)V
L6:
aload 0
getfield com/nd/android/u/contact/activity/XYTopRankActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYTopRankActivity;
invokestatic com/nd/android/u/contact/activity/XYTopRankActivity/access$100(Lcom/nd/android/u/contact/activity/XYTopRankActivity;)V
goto L3
L5:
aload 0
getfield com/nd/android/u/contact/activity/XYTopRankActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYTopRankActivity;
invokestatic com/nd/android/u/contact/activity/XYTopRankActivity/access$400(Lcom/nd/android/u/contact/activity/XYTopRankActivity;)Lcom/nd/android/u/contact/view/TopRankHiddenLoveView;
aload 2
invokevirtual com/nd/android/u/contact/view/TopRankHiddenLoveView/setFilter(Lcom/product/android/commonInterface/contact/RankFilterInfo;)V
goto L6
.limit locals 3
.limit stack 2
.end method
