.bytecode 50.0
.class synchronized com/nd/schoollife/ui/common/process/InputContentViewManager$7
.super java/lang/Object
.implements com/nd/schoollife/ui/common/process/InputContentViewManager$SendCommentListener
.enclosing method com/nd/schoollife/ui/common/process/InputContentViewManager/showCommentView(Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;Ljava/lang/String;Ljava/lang/String;)V
.inner class inner com/nd/schoollife/ui/common/process/InputContentViewManager$7

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/common/process/InputContentViewManager;

.field final synthetic 'val$toID' Ljava/lang/String;

.method <init>(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/process/InputContentViewManager$7/this$0 Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 0
aload 2
putfield com/nd/schoollife/ui/common/process/InputContentViewManager$7/val$toID Ljava/lang/String;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onSendBefore(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
.signature "(Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;Ljava/lang/String;)V"
new com/google/gson/Gson
dup
invokespecial com/google/gson/Gson/<init>()V
astore 4
new com/nd/schoollife/ui/post/task/PostProcessTask
dup
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager$7/this$0 Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokestatic com/nd/schoollife/ui/common/process/InputContentViewManager/access$1500(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)Landroid/app/Activity;
bipush 12
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_SUBMIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager$7/this$0 Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokestatic com/nd/schoollife/ui/common/process/InputContentViewManager/access$1600(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;
invokespecial com/nd/schoollife/ui/post/task/PostProcessTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_4
anewarray java/lang/String
dup
iconst_0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager$7/val$toID Ljava/lang/String;
aastore
dup
iconst_1
aload 1
aastore
dup
iconst_2
aload 4
aload 2
invokevirtual com/google/gson/Gson/toJson(Ljava/lang/Object;)Ljava/lang/String;
aastore
dup
iconst_3
aload 3
aastore
invokevirtual com/nd/schoollife/ui/post/task/PostProcessTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager$7/this$0 Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/showSendingDialog()V
return
.limit locals 5
.limit stack 6
.end method
