.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/SelectUserActivity$AddDiscussionMemberTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private AddDiscussionMemberTask inner com/nd/android/u/contact/activity/SelectUserActivity$AddDiscussionMemberTask outer com/nd/android/u/contact/activity/SelectUserActivity

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/SelectUserActivity;

.method private <init>(Lcom/nd/android/u/contact/activity/SelectUserActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SelectUserActivity$AddDiscussionMemberTask/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/activity/SelectUserActivity;Lcom/nd/android/u/contact/activity/SelectUserActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/SelectUserActivity$AddDiscussionMemberTask/<init>(Lcom/nd/android/u/contact/activity/SelectUserActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L2
.catch com/common/android/utils/http/HttpException from L7 to L8 using L2
.catch com/common/android/utils/http/HttpException from L8 to L9 using L2
L0:
invokestatic java/lang/System/currentTimeMillis()J
lstore 3
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getList()Ljava/util/ArrayList;
astore 7
new com/nd/android/u/contact/com/OapDiscussionCom
dup
invokespecial com/nd/android/u/contact/com/OapDiscussionCom/<init>()V
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$AddDiscussionMemberTask/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
getfield com/nd/android/u/contact/activity/SelectUserActivity/gid J
aload 7
invokevirtual com/nd/android/u/contact/com/OapDiscussionCom/addDisscussion(JLjava/util/List;)Z
pop
aload 7
invokevirtual java/util/ArrayList/size()I
newarray long
astore 1
aload 7
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 7
L1:
iconst_0
istore 2
L3:
aload 7
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 1
iload 2
aload 7
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lastore
L4:
iload 2
iconst_1
iadd
istore 2
goto L3
L5:
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDiscussionGroupType()I
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$AddDiscussionMemberTask/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
getfield com/nd/android/u/contact/activity/SelectUserActivity/gid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 1
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsGroupAddMember(ILjava/lang/String;[J)Ljava/lang/String;
pop
invokestatic com/nd/android/u/contact/business/SynOapGroupPro/getInstance()Lcom/nd/android/u/contact/business/SynOapGroupPro;
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$AddDiscussionMemberTask/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
getfield com/nd/android/u/contact/activity/SelectUserActivity/gid J
invokevirtual com/nd/android/u/contact/business/SynOapGroupPro/getDiscussionMember(J)Ljava/util/List;
astore 1
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$AddDiscussionMemberTask/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
getfield com/nd/android/u/contact/activity/SelectUserActivity/gid J
invokevirtual com/nd/android/u/contact/business/GroupVariable/findGroupByGid(J)Lcom/product/android/commonInterface/contact/OapGroup;
astore 7
L6:
aload 7
ifnull L8
L7:
aload 7
aload 1
checkcast java/util/ArrayList
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGMemberList(Ljava/util/ArrayList;)V
L8:
invokestatic java/lang/System/currentTimeMillis()J
lstore 5
ldc "====="
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u5b8c\u6210\u8017\u65f6\u65f6\u95f4\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 5
lload 3
lsub
ldc2_w 1000L
ldiv
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "\u79d2"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L9:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 8
.limit stack 6
.end method
