.bytecode 50.0
.class final synchronized com/handmark/pulltorefresh/library/PullToRefreshListView$InternalListViewSDK9
.super com/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView
.annotation invisible Landroid/annotation/TargetApi;
value I = 9
.end annotation
.inner class final InternalListViewSDK9 inner com/handmark/pulltorefresh/library/PullToRefreshListView$InternalListViewSDK9 outer com/handmark/pulltorefresh/library/PullToRefreshListView

.field final synthetic 'this$0' Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.method public <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
putfield com/handmark/pulltorefresh/library/PullToRefreshListView$InternalListViewSDK9/this$0 Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
aload 1
aload 2
aload 3
invokespecial com/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView/<init>(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 4
.limit stack 4
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
aload 0
iload 1
iload 2
iload 3
iload 4
iload 5
iload 6
iload 7
iload 8
iload 9
invokespecial com/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView/overScrollBy(IIIIIIIIZ)Z
istore 10
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshListView$InternalListViewSDK9/this$0 Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
iload 1
iload 3
iload 2
iload 4
iload 9
invokestatic com/handmark/pulltorefresh/library/OverscrollHelper/overScrollBy(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIZ)V
iload 10
ireturn
.limit locals 11
.limit stack 10
.end method
