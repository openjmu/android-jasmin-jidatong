.bytecode 50.0
.class synchronized android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1
.super java/lang/Object
.implements android/support/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean
.enclosing method android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl/newAccessiblityDelegateBridge(Landroid/support/v4/view/AccessibilityDelegateCompat;)Ljava/lang/Object;
.inner class static AccessibilityDelegateJellyBeanImpl inner android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl outer android/support/v4/view/AccessibilityDelegateCompat
.inner class inner android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1

.field final synthetic 'this$0' Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl;

.field final synthetic 'val$compat' Landroid/support/v4/view/AccessibilityDelegateCompat;

.method <init>(Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
aload 0
aload 1
putfield android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1/this$0 Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl;
aload 0
aload 2
putfield android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1/val$compat Landroid/support/v4/view/AccessibilityDelegateCompat;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
aload 0
getfield android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1/val$compat Landroid/support/v4/view/AccessibilityDelegateCompat;
aload 1
aload 2
invokevirtual android/support/v4/view/AccessibilityDelegateCompat/dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Ljava/lang/Object;
aload 0
getfield android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1/val$compat Landroid/support/v4/view/AccessibilityDelegateCompat;
aload 1
invokevirtual android/support/v4/view/AccessibilityDelegateCompat/getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
astore 1
aload 1
ifnull L0
aload 1
invokevirtual android/support/v4/view/accessibility/AccessibilityNodeProviderCompat/getProvider()Ljava/lang/Object;
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
aload 0
getfield android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1/val$compat Landroid/support/v4/view/AccessibilityDelegateCompat;
aload 1
aload 2
invokevirtual android/support/v4/view/AccessibilityDelegateCompat/onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
return
.limit locals 3
.limit stack 3
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/Object;)V
aload 0
getfield android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1/val$compat Landroid/support/v4/view/AccessibilityDelegateCompat;
aload 1
new android/support/v4/view/accessibility/AccessibilityNodeInfoCompat
dup
aload 2
invokespecial android/support/v4/view/accessibility/AccessibilityNodeInfoCompat/<init>(Ljava/lang/Object;)V
invokevirtual android/support/v4/view/AccessibilityDelegateCompat/onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
return
.limit locals 3
.limit stack 5
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
aload 0
getfield android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1/val$compat Landroid/support/v4/view/AccessibilityDelegateCompat;
aload 1
aload 2
invokevirtual android/support/v4/view/AccessibilityDelegateCompat/onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
return
.limit locals 3
.limit stack 3
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
aload 0
getfield android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1/val$compat Landroid/support/v4/view/AccessibilityDelegateCompat;
aload 1
aload 2
aload 3
invokevirtual android/support/v4/view/AccessibilityDelegateCompat/onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
ireturn
.limit locals 4
.limit stack 4
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
aload 0
getfield android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1/val$compat Landroid/support/v4/view/AccessibilityDelegateCompat;
aload 1
iload 2
aload 3
invokevirtual android/support/v4/view/AccessibilityDelegateCompat/performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
ireturn
.limit locals 4
.limit stack 4
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
aload 0
getfield android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1/val$compat Landroid/support/v4/view/AccessibilityDelegateCompat;
aload 1
iload 2
invokevirtual android/support/v4/view/AccessibilityDelegateCompat/sendAccessibilityEvent(Landroid/view/View;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
aload 0
getfield android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1/val$compat Landroid/support/v4/view/AccessibilityDelegateCompat;
aload 1
aload 2
invokevirtual android/support/v4/view/AccessibilityDelegateCompat/sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
return
.limit locals 3
.limit stack 3
.end method
