.bytecode 50.0
.class synchronized com/android/u/weibo/sina/controller/StatusManager$4
.super java/lang/Object
.implements com/weibo/sdk/android/net/RequestListener
.enclosing method com/android/u/weibo/sina/controller/StatusManager/postStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;)V
.inner class inner com/android/u/weibo/sina/controller/StatusManager$4

.field final synthetic 'this$0' Lcom/android/u/weibo/sina/controller/StatusManager;

.field final synthetic 'val$listener' Lcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;

.field final synthetic 'val$localCreateAt' J

.method <init>(Lcom/android/u/weibo/sina/controller/StatusManager;Lcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;J)V
aload 0
aload 1
putfield com/android/u/weibo/sina/controller/StatusManager$4/this$0 Lcom/android/u/weibo/sina/controller/StatusManager;
aload 0
aload 2
putfield com/android/u/weibo/sina/controller/StatusManager$4/val$listener Lcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;
aload 0
lload 3
putfield com/android/u/weibo/sina/controller/StatusManager$4/val$localCreateAt J
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 5
.limit stack 3
.end method

.method public onComplete(Ljava/lang/String;)V
.catch org/json/JSONException from L0 to L1 using L2
L0:
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
new com/android/u/weibo/sina/business/parser/StatusParser
dup
invokespecial com/android/u/weibo/sina/business/parser/StatusParser/<init>()V
aload 1
invokevirtual com/android/u/weibo/sina/business/parser/StatusParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
astore 1
invokestatic com/android/u/weibo/sina/controller/StatusManager/access$100()Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
iconst_0
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/add(ILjava/lang/Object;)V
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager$4/val$listener Lcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;
iconst_0
aload 1
aconst_null
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager$4/val$localCreateAt J
invokevirtual com/android/u/weibo/weibo/controller/NdPostOrReTweetListener/onComplete(ILjava/lang/Object;Ljava/lang/String;J)V
L1:
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager$4/this$0 Lcom/android/u/weibo/sina/controller/StatusManager;
iconst_1
invokevirtual com/android/u/weibo/sina/controller/StatusManager/addLimitCount(I)V
return
L2:
astore 1
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager$4/val$listener Lcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;
iconst_0
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 1
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/Exception;)V
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager$4/val$localCreateAt J
invokevirtual com/android/u/weibo/weibo/controller/NdPostOrReTweetListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;J)V
goto L1
.limit locals 2
.limit stack 6
.end method

.method public onComplete4binary(Ljava/io/ByteArrayOutputStream;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onError(Lcom/weibo/sdk/android/WeiboException;)V
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager$4/val$listener Lcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;
iconst_0
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 1
invokevirtual com/weibo/sdk/android/WeiboException/getMessage()Ljava/lang/String;
aload 1
invokevirtual com/weibo/sdk/android/WeiboException/getCause()Ljava/lang/Throwable;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager$4/val$localCreateAt J
invokevirtual com/android/u/weibo/weibo/controller/NdPostOrReTweetListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;J)V
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager$4/this$0 Lcom/android/u/weibo/sina/controller/StatusManager;
iconst_1
invokevirtual com/android/u/weibo/sina/controller/StatusManager/addLimitCount(I)V
return
.limit locals 2
.limit stack 6
.end method

.method public onIOException(Ljava/io/IOException;)V
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager$4/val$listener Lcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;
iconst_0
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 1
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
aload 1
invokevirtual java/io/IOException/getCause()Ljava/lang/Throwable;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager$4/val$localCreateAt J
invokevirtual com/android/u/weibo/weibo/controller/NdPostOrReTweetListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;J)V
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager$4/this$0 Lcom/android/u/weibo/sina/controller/StatusManager;
iconst_1
invokevirtual com/android/u/weibo/sina/controller/StatusManager/addLimitCount(I)V
return
.limit locals 2
.limit stack 6
.end method
