.bytecode 50.0
.class synchronized com/bestpay/app/PassGuardManager$2
.super java/lang/Object
.implements cn/passguard/doAction
.enclosing method com/bestpay/app/PassGuardManager/newPassGuard(Ljava/lang/String;)V
.inner class inner com/bestpay/app/PassGuardManager$2
.inner class inner com/bestpay/app/PassGuardManager$2$1

.field final synthetic 'this$0' Lcom/bestpay/app/PassGuardManager;

.method <init>(Lcom/bestpay/app/PassGuardManager;)V
aload 0
aload 1
putfield com/bestpay/app/PassGuardManager$2/this$0 Lcom/bestpay/app/PassGuardManager;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$0(Lcom/bestpay/app/PassGuardManager$2;)Lcom/bestpay/app/PassGuardManager;
aload 0
getfield com/bestpay/app/PassGuardManager$2/this$0 Lcom/bestpay/app/PassGuardManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method public doActionFunction()V
invokestatic com/bestpay/app/PassGuardManager/access$0()Landroid/content/Context;
checkcast android/app/Activity
new com/bestpay/app/PassGuardManager$2$1
dup
aload 0
invokespecial com/bestpay/app/PassGuardManager$2$1/<init>(Lcom/bestpay/app/PassGuardManager$2;)V
invokevirtual android/app/Activity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 1
.limit stack 4
.end method
