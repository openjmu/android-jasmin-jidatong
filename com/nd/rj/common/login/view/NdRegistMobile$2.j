.bytecode 50.0
.class synchronized com/nd/rj/common/login/view/NdRegistMobile$2
.super android/os/Handler
.enclosing method com/nd/rj/common/login/view/NdRegistMobile
.inner class inner com/nd/rj/common/login/view/NdRegistMobile$2

.field final synthetic 'this$0' Lcom/nd/rj/common/login/view/NdRegistMobile;

.method <init>(Lcom/nd/rj/common/login/view/NdRegistMobile;)V
aload 0
aload 1
putfield com/nd/rj/common/login/view/NdRegistMobile$2/this$0 Lcom/nd/rj/common/login/view/NdRegistMobile;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
.catch java/lang/Exception from L0 to L1 using L2
aload 1
getfield android/os/Message/what I
tableswitch 110
L3
default : L4
L4:
return
L3:
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$2/this$0 Lcom/nd/rj/common/login/view/NdRegistMobile;
invokestatic com/nd/rj/common/login/view/NdRegistMobile/access$500(Lcom/nd/rj/common/login/view/NdRegistMobile;)Landroid/widget/TextView;
ldc_w -7829368
invokevirtual android/widget/TextView/setTextColor(I)V
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast java/lang/String
astore 1
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$2/this$0 Lcom/nd/rj/common/login/view/NdRegistMobile;
invokestatic com/nd/rj/common/login/view/NdRegistMobile/access$500(Lcom/nd/rj/common/login/view/NdRegistMobile;)Landroid/widget/TextView;
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$2/this$0 Lcom/nd/rj/common/login/view/NdRegistMobile;
getstatic com/nd/rj/common/R$string/nd_send_repeat I
invokevirtual com/nd/rj/common/login/view/NdRegistMobile/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 1
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
ifne L4
L0:
ldc2_w 1000L
invokestatic java/lang/Thread/sleep(J)V
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$2/this$0 Lcom/nd/rj/common/login/view/NdRegistMobile;
invokestatic com/nd/rj/common/login/view/NdRegistMobile/access$500(Lcom/nd/rj/common/login/view/NdRegistMobile;)Landroid/widget/TextView;
ldc_w -16776961
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$2/this$0 Lcom/nd/rj/common/login/view/NdRegistMobile;
invokestatic com/nd/rj/common/login/view/NdRegistMobile/access$500(Lcom/nd/rj/common/login/view/NdRegistMobile;)Landroid/widget/TextView;
aload 0
getfield com/nd/rj/common/login/view/NdRegistMobile$2/this$0 Lcom/nd/rj/common/login/view/NdRegistMobile;
getstatic com/nd/rj/common/R$string/nd_send_repeat2 I
invokevirtual com/nd/rj/common/login/view/NdRegistMobile/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
return
L2:
astore 1
return
.limit locals 2
.limit stack 6
.end method
