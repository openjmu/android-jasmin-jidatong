.bytecode 50.0
.class public synchronized abstract com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.super java/lang/Object
.signature "<Params:Ljava/lang/Object;Progress:Ljava/lang/Object;Result:Ljava/lang/Object;>Ljava/lang/Object;"
.inner class static final inner com/common/android/utils/concurrent/NdTinyHttpAsyncTask$1
.inner class inner com/common/android/utils/concurrent/NdTinyHttpAsyncTask$2
.inner class inner com/common/android/utils/concurrent/NdTinyHttpAsyncTask$3
.inner class static synthetic inner com/common/android/utils/concurrent/NdTinyHttpAsyncTask$4
.inner class private static AsyncTaskResult inner com/common/android/utils/concurrent/NdTinyHttpAsyncTask$AsyncTaskResult outer com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.inner class private static InternalHandler inner com/common/android/utils/concurrent/NdTinyHttpAsyncTask$InternalHandler outer com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.inner class private static SerialExecutor inner com/common/android/utils/concurrent/NdTinyHttpAsyncTask$SerialExecutor outer com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.inner class inner com/common/android/utils/concurrent/NdTinyHttpAsyncTask$SerialExecutor$1
.inner class public static final enum Status inner com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status outer com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.inner class private static abstract WorkerRunnable inner com/common/android/utils/concurrent/NdTinyHttpAsyncTask$WorkerRunnable outer com/common/android/utils/concurrent/NdTinyHttpAsyncTask

.field private static final 'CORE_POOL_SIZE' I

.field private static final 'CPU_COUNT' I

.field private static final 'KEEP_ALIVE' I = 1


.field private static final 'LOG_TAG' Ljava/lang/String; = "NdTinyHttpAsyncTask"

.field private static final 'MAXIMUM_POOL_SIZE' I

.field private static final 'MESSAGE_POST_PROGRESS' I = 2


.field private static final 'MESSAGE_POST_RESULT' I = 1


.field public static final 'SERIAL_EXECUTOR' Ljava/util/concurrent/Executor;

.field public static final 'THREAD_POOL_EXECUTOR' Ljava/util/concurrent/Executor;

.field public static final 'TINY_HTTP_EXECUTOR' Ljava/util/concurrent/Executor;

.field private static volatile 'sDefaultExecutor' Ljava/util/concurrent/Executor;

.field private static final 'sHandler' Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$InternalHandler;

.field private static final 'sPoolWorkQueue' Ljava/util/concurrent/BlockingQueue; signature "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"

.field private static final 'sThreadFactory' Ljava/util/concurrent/ThreadFactory;

.field private final 'mCancelled' Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final 'mFuture' Lcom/common/android/utils/concurrent/FutureTask; signature "Lcom/common/android/utils/concurrent/FutureTask<TResult;>;"

.field private volatile 'mStatus' Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;

.field private final 'mTaskInvoked' Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final 'mWorker' Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$WorkerRunnable; signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$WorkerRunnable<TParams;TResult;>;"

.method static <clinit>()V
invokestatic java/lang/Runtime/getRuntime()Ljava/lang/Runtime;
invokevirtual java/lang/Runtime/availableProcessors()I
putstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask/CPU_COUNT I
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask/CPU_COUNT I
iconst_1
iadd
putstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask/CORE_POOL_SIZE I
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask/CPU_COUNT I
iconst_2
imul
iconst_1
iadd
putstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask/MAXIMUM_POOL_SIZE I
new com/common/android/utils/concurrent/NdTinyHttpAsyncTask$1
dup
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask$1/<init>()V
putstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask/sThreadFactory Ljava/util/concurrent/ThreadFactory;
new java/util/concurrent/LinkedBlockingQueue
dup
sipush 128
invokespecial java/util/concurrent/LinkedBlockingQueue/<init>(I)V
putstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask/sPoolWorkQueue Ljava/util/concurrent/BlockingQueue;
new java/util/concurrent/ThreadPoolExecutor
dup
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask/CORE_POOL_SIZE I
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask/MAXIMUM_POOL_SIZE I
lconst_1
getstatic java/util/concurrent/TimeUnit/SECONDS Ljava/util/concurrent/TimeUnit;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask/sPoolWorkQueue Ljava/util/concurrent/BlockingQueue;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask/sThreadFactory Ljava/util/concurrent/ThreadFactory;
invokespecial java/util/concurrent/ThreadPoolExecutor/<init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
putstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask/THREAD_POOL_EXECUTOR Ljava/util/concurrent/Executor;
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmplt L0
new com/common/android/utils/concurrent/NdTinyHttpAsyncTask$SerialExecutor
dup
aconst_null
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask$SerialExecutor/<init>(Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$1;)V
astore 0
L1:
aload 0
putstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask/SERIAL_EXECUTOR Ljava/util/concurrent/Executor;
invokestatic com/common/android/utils/concurrent/NdExecutors/getTinyHttpThreadPool()Ljava/util/concurrent/ExecutorService;
putstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask/TINY_HTTP_EXECUTOR Ljava/util/concurrent/Executor;
new com/common/android/utils/concurrent/NdTinyHttpAsyncTask$InternalHandler
dup
aconst_null
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask$InternalHandler/<init>(Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$1;)V
putstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask/sHandler Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$InternalHandler;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask/TINY_HTTP_EXECUTOR Ljava/util/concurrent/Executor;
putstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask/sDefaultExecutor Ljava/util/concurrent/Executor;
return
L0:
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask/sThreadFactory Ljava/util/concurrent/ThreadFactory;
invokestatic java/util/concurrent/Executors/newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;
astore 0
goto L1
.limit locals 1
.limit stack 9
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/PENDING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
putfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask/mStatus Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
aload 0
new java/util/concurrent/atomic/AtomicBoolean
dup
invokespecial java/util/concurrent/atomic/AtomicBoolean/<init>()V
putfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask/mCancelled Ljava/util/concurrent/atomic/AtomicBoolean;
aload 0
new java/util/concurrent/atomic/AtomicBoolean
dup
invokespecial java/util/concurrent/atomic/AtomicBoolean/<init>()V
putfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask/mTaskInvoked Ljava/util/concurrent/atomic/AtomicBoolean;
aload 0
new com/common/android/utils/concurrent/NdTinyHttpAsyncTask$2
dup
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask$2/<init>(Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;)V
putfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask/mWorker Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$WorkerRunnable;
aload 0
new com/common/android/utils/concurrent/NdTinyHttpAsyncTask$3
dup
aload 0
aload 0
getfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask/mWorker Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$WorkerRunnable;
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask$3/<init>(Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;Ljava/util/concurrent/Callable;)V
putfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask/mFuture Lcom/common/android/utils/concurrent/FutureTask;
aload 0
getfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask/mFuture Lcom/common/android/utils/concurrent/FutureTask;
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual com/common/android/utils/concurrent/NdAbstractTask/setName(Ljava/lang/String;)V
return
.limit locals 1
.limit stack 5
.end method

.method static synthetic access$300(Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
aload 0
getfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask/mTaskInvoked Ljava/util/concurrent/atomic/AtomicBoolean;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/postResult(Ljava/lang/Object;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;Ljava/lang/Object;)V
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/postResultIfNotInvoked(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$600(Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;Ljava/lang/Object;)V
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/finish(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 2
.end method

.method public static execute(Ljava/lang/Runnable;)V
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask/sDefaultExecutor Ljava/util/concurrent/Executor;
aload 0
invokeinterface java/util/concurrent/Executor/execute(Ljava/lang/Runnable;)V 1
return
.limit locals 1
.limit stack 2
.end method

.method private finish(Ljava/lang/Object;)V
.signature "(TResult;)V"
aload 0
invokevirtual com/common/android/utils/concurrent/NdTinyHttpAsyncTask/isCancelled()Z
ifeq L0
aload 0
aload 1
invokevirtual com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onCancelled(Ljava/lang/Object;)V
L1:
aload 0
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/FINISHED Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
putfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask/mStatus Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
return
L0:
aload 0
aload 1
invokevirtual com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
goto L1
.limit locals 2
.limit stack 2
.end method

.method public static init()V
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask/sHandler Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$InternalHandler;
invokevirtual com/common/android/utils/concurrent/NdTinyHttpAsyncTask$InternalHandler/getLooper()Landroid/os/Looper;
pop
return
.limit locals 0
.limit stack 1
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
.signature "(TResult;)TResult;"
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask/sHandler Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$InternalHandler;
iconst_1
new com/common/android/utils/concurrent/NdTinyHttpAsyncTask$AsyncTaskResult
dup
aload 0
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask$AsyncTaskResult/<init>(Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;[Ljava/lang/Object;)V
invokevirtual com/common/android/utils/concurrent/NdTinyHttpAsyncTask$InternalHandler/obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
invokevirtual android/os/Message/sendToTarget()V
aload 1
areturn
.limit locals 2
.limit stack 9
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
.signature "(TResult;)V"
aload 0
getfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask/mTaskInvoked Ljava/util/concurrent/atomic/AtomicBoolean;
invokevirtual java/util/concurrent/atomic/AtomicBoolean/get()Z
ifne L0
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/postResult(Ljava/lang/Object;)Ljava/lang/Object;
pop
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
aload 0
putstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask/sDefaultExecutor Ljava/util/concurrent/Executor;
return
.limit locals 1
.limit stack 1
.end method

.method public static stopTaskById(Lcom/common/android/utils/concurrent/ETaskTypeId;)V
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask/sDefaultExecutor Ljava/util/concurrent/Executor;
instanceof com/common/android/utils/concurrent/NdThreadPoolExecutor
ifeq L0
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask/sDefaultExecutor Ljava/util/concurrent/Executor;
checkcast com/common/android/utils/concurrent/NdThreadPoolExecutor
aload 0
invokevirtual com/common/android/utils/concurrent/NdThreadPoolExecutor/removeById(Lcom/common/android/utils/concurrent/ETaskTypeId;)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public final cancel(Z)Z
aload 0
getfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask/mCancelled Ljava/util/concurrent/atomic/AtomicBoolean;
iconst_1
invokevirtual java/util/concurrent/atomic/AtomicBoolean/set(Z)V
aload 0
getfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask/mFuture Lcom/common/android/utils/concurrent/FutureTask;
iload 1
invokevirtual com/common/android/utils/concurrent/FutureTask/cancel(Z)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method protected transient abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.signature "([TParams;)TResult;"
.end method

.method public final transient execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
.signature "([TParams;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<TParams;TProgress;TResult;>;"
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask/sDefaultExecutor Ljava/util/concurrent/Executor;
invokestatic com/common/android/utils/concurrent/NdExecutors/getTinyHttpThreadPool()Ljava/util/concurrent/ExecutorService;
if_acmpeq L0
invokestatic com/common/android/utils/concurrent/NdExecutors/getTinyHttpThreadPool()Ljava/util/concurrent/ExecutorService;
putstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask/sDefaultExecutor Ljava/util/concurrent/Executor;
L0:
aload 0
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask/sDefaultExecutor Ljava/util/concurrent/Executor;
aload 1
invokevirtual com/common/android/utils/concurrent/NdTinyHttpAsyncTask/executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
areturn
.limit locals 2
.limit stack 3
.end method

.method public final transient executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
.signature "(Ljava/util/concurrent/Executor;[TParams;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<TParams;TProgress;TResult;>;"
aload 0
getfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask/mStatus Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/PENDING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpeq L0
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$4/$SwitchMap$com$common$android$utils$concurrent$NdTinyHttpAsyncTask$Status [I
aload 0
getfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask/mStatus Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
invokevirtual com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/ordinal()I
iaload
tableswitch 1
L1
L2
default : L0
L0:
aload 0
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
putfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask/mStatus Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
aload 0
invokevirtual com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPreExecute()V
aload 0
getfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask/mWorker Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$WorkerRunnable;
aload 2
putfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask$WorkerRunnable/mParams [Ljava/lang/Object;
aload 1
aload 0
getfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask/mFuture Lcom/common/android/utils/concurrent/FutureTask;
invokeinterface java/util/concurrent/Executor/execute(Ljava/lang/Runnable;)V 1
aload 0
areturn
L1:
new java/lang/IllegalStateException
dup
ldc "Cannot execute task: the task is already running."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L2:
new java/lang/IllegalStateException
dup
ldc "Cannot execute task: the task has already been executed (a task can be executed only once)"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 3
.end method

.method public final get()Ljava/lang/Object;
.signature "()TResult;"
.throws java/lang/InterruptedException
.throws java/util/concurrent/ExecutionException
aload 0
getfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask/mFuture Lcom/common/android/utils/concurrent/FutureTask;
invokevirtual com/common/android/utils/concurrent/FutureTask/get()Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
.signature "(JLjava/util/concurrent/TimeUnit;)TResult;"
.throws java/lang/InterruptedException
.throws java/util/concurrent/ExecutionException
.throws java/util/concurrent/TimeoutException
aload 0
getfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask/mFuture Lcom/common/android/utils/concurrent/FutureTask;
lload 1
aload 3
invokevirtual com/common/android/utils/concurrent/FutureTask/get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
areturn
.limit locals 4
.limit stack 4
.end method

.method public final getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
aload 0
getfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask/mStatus Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTaskName()Ljava/lang/String;
aload 0
getfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask/mFuture Lcom/common/android/utils/concurrent/FutureTask;
invokevirtual com/common/android/utils/concurrent/NdAbstractTask/getName()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final isCancelled()Z
aload 0
getfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask/mCancelled Ljava/util/concurrent/atomic/AtomicBoolean;
invokevirtual java/util/concurrent/atomic/AtomicBoolean/get()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected onCancelled()V
return
.limit locals 1
.limit stack 0
.end method

.method protected onCancelled(Ljava/lang/Object;)V
.signature "(TResult;)V"
aload 0
invokevirtual com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onCancelled()V
return
.limit locals 2
.limit stack 1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
.signature "(TResult;)V"
return
.limit locals 2
.limit stack 0
.end method

.method protected onPreExecute()V
return
.limit locals 1
.limit stack 0
.end method

.method protected transient onProgressUpdate([Ljava/lang/Object;)V
.signature "([TProgress;)V"
return
.limit locals 2
.limit stack 0
.end method

.method protected final transient publishProgress([Ljava/lang/Object;)V
.signature "([TProgress;)V"
aload 0
invokevirtual com/common/android/utils/concurrent/NdTinyHttpAsyncTask/isCancelled()Z
ifne L0
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask/sHandler Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$InternalHandler;
iconst_2
new com/common/android/utils/concurrent/NdTinyHttpAsyncTask$AsyncTaskResult
dup
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask$AsyncTaskResult/<init>(Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;[Ljava/lang/Object;)V
invokevirtual com/common/android/utils/concurrent/NdTinyHttpAsyncTask$InternalHandler/obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
invokevirtual android/os/Message/sendToTarget()V
L0:
return
.limit locals 2
.limit stack 6
.end method

.method public setId(Lcom/common/android/utils/concurrent/ETaskTypeId;)V
aload 0
getfield com/common/android/utils/concurrent/NdTinyHttpAsyncTask/mFuture Lcom/common/android/utils/concurrent/FutureTask;
aload 1
invokevirtual com/common/android/utils/concurrent/NdAbstractTask/setId(Lcom/common/android/utils/concurrent/ETaskTypeId;)V
return
.limit locals 2
.limit stack 2
.end method
