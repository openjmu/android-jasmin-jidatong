.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/GroupManagerActivity2$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/activity/GroupManagerActivity2/showCustomDialog()V
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity2$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/GroupManagerActivity2;

.field final synthetic 'val$dialog' Lcom/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog;

.method <init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;Lcom/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/GroupManagerActivity2$2/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
aload 0
aload 2
putfield com/nd/android/u/contact/activity/GroupManagerActivity2$2/val$dialog Lcom/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$2/val$dialog Lcom/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog;
invokevirtual com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/dismiss()V
return
.limit locals 2
.limit stack 1
.end method
