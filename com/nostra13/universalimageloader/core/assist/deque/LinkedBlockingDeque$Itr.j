.bytecode 50.0
.class synchronized com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Itr
.super com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr
.signature "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>.AbstractItr;"
.inner class private Itr inner com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Itr outer com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque

.field final synthetic 'this$0' Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;

.method private <init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;)V
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Itr/this$0 Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr/<init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;)V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Itr;)V
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Itr/<init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;)V
return
.limit locals 3
.limit stack 2
.end method

.method firstNode()Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
.signature "()Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
aload 0
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Itr/this$0 Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque/first Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
areturn
.limit locals 1
.limit stack 1
.end method

.method nextNode(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
.signature "(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;)Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
aload 1
getfield com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node/next Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
areturn
.limit locals 2
.limit stack 1
.end method
