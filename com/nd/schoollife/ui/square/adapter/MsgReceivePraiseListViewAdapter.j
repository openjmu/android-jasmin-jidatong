.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter
.super com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter
.signature "Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter<Lcom/nd/android/forumsdk/business/bean/structure/MyReceivePraise;>;"
.inner class inner com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$1
.inner class inner com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$2
.inner class inner com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$3
.inner class private static ViewHolder inner com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder outer com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter

.field public static final 'MAX_POST_CONTENT_SIZE' I = 11


.field private 'mInflater' Landroid/view/LayoutInflater;

.method public <init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;)V
aload 0
aload 1
aload 2
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;)V
aload 0
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
putfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter/mInflater Landroid/view/LayoutInflater;
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private bindData(ILcom/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder;)V
aload 0
invokevirtual com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter/getList()Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/structure/MyReceivePraise
astore 7
aload 7
ifnonnull L0
return
L0:
aload 7
invokevirtual com/nd/android/forumsdk/business/bean/structure/MyReceivePraise/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
astore 8
aload 7
invokevirtual com/nd/android/forumsdk/business/bean/structure/MyReceivePraise/getPost_info()Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
astore 6
aconst_null
astore 5
aload 6
ifnull L1
aload 6
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getScope()Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
astore 5
L1:
aload 8
ifnull L2
aload 2
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/mName Landroid/widget/TextView;
aload 8
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getNickname()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 8
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
aload 8
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getSysavatar()I
aload 2
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/mHeader Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/mHeader Landroid/widget/ImageView;
new com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$1
dup
aload 0
aload 8
invokespecial com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$1/<init>(Lcom/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter;Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
L3:
aload 5
ifnull L4
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/getId()J
lstore 3
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/getType()I
istore 1
bipush 16
iload 1
if_icmpne L5
aload 2
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/mFrom Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u6765\u81ea"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u793e\u56e2"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L6:
aload 2
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/mFrom Landroid/widget/TextView;
new com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$2
dup
aload 0
iload 1
lload 3
invokespecial com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$2/<init>(Lcom/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter;IJ)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
L7:
aload 6
ifnull L8
aload 2
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/mTime Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter/mCtx Landroid/content/Context;
aload 7
invokevirtual com/nd/android/forumsdk/business/bean/structure/MyReceivePraise/getPost_time()J
invokestatic com/nd/schoollife/common/utils/CalendarUtil/getFriendTime(Landroid/content/Context;J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter/mCtx Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
astore 5
aload 2
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/mPostTextView Lcom/product/android/ui/widget/ProTextView;
iconst_0
invokevirtual com/product/android/ui/widget/ProTextView/setVisibility(I)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/mContentImageView Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/mContentTextView Lcom/product/android/ui/widget/ProTextView;
aload 5
getstatic com/nd/schoollife/R$string/str_square_message_item_like_tv I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/product/android/ui/widget/ProTextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/mContentTextView Lcom/product/android/ui/widget/ProTextView;
aload 5
getstatic com/nd/schoollife/R$color/cor_square_message_item_content_tv I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual com/product/android/ui/widget/ProTextView/setTextColor(I)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/mPostTextView Lcom/product/android/ui/widget/ProTextView;
aload 5
getstatic com/nd/schoollife/R$color/cor_square_message_item_time_tv I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual com/product/android/ui/widget/ProTextView/setTextColor(I)V
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter/mCtx Landroid/content/Context;
aload 6
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getContent()Ljava/lang/String;
invokestatic com/product/android/utils/ContentUtils/resolveSmileyAtUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;
astore 5
aload 2
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/mPostTextView Lcom/product/android/ui/widget/ProTextView;
aload 5
invokevirtual com/product/android/ui/widget/ProTextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/mItemLL Landroid/widget/LinearLayout;
new com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$3
dup
aload 0
aload 6
invokespecial com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$3/<init>(Lcom/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter;Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L2:
aload 2
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/mName Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/mHeader Landroid/widget/ImageView;
aconst_null
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/mHeader Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L3
L5:
aload 2
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/mFrom Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u6765\u81ea"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u5c0f\u7ec4"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L6
L4:
aload 2
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/mFrom Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/mFrom Landroid/widget/TextView;
aconst_null
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
goto L7
L8:
aload 2
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/mTime Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/mPostTextView Lcom/product/android/ui/widget/ProTextView;
ldc ""
invokevirtual com/product/android/ui/widget/ProTextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/mItemLL Landroid/widget/LinearLayout;
aconst_null
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 9
.limit stack 7
.end method

.method public getCount()I
aload 0
invokevirtual com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter/getList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
ifnonnull L0
new com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder
dup
aconst_null
invokespecial com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/<init>(Lcom/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$1;)V
astore 3
aload 0
getfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/square_message_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/schoollife/R$id/iv_square_message_header I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/mHeader Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_message_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/mName Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_message_from I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/mFrom Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_message_time I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/mTime Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_message_content I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/ProTextView
putfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/mContentTextView Lcom/product/android/ui/widget/ProTextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/iv_square_message_content I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/mContentImageView Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_square_message_post I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/ProTextView
putfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/mPostTextView Lcom/product/android/ui/widget/ProTextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/ll_square_message_item I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder/mItemLL Landroid/widget/LinearLayout;
L1:
aload 0
iload 1
aload 3
invokespecial com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter/bindData(ILcom/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder;)V
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter$ViewHolder
astore 3
goto L1
.limit locals 4
.limit stack 3
.end method

.method protected isDuplicate(Lcom/nd/android/forumsdk/business/bean/structure/MyReceivePraise;Lcom/nd/android/forumsdk/business/bean/structure/MyReceivePraise;)Z
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method

.method protected volatile synthetic isDuplicate(Ljava/lang/Object;Ljava/lang/Object;)Z
aload 0
aload 1
checkcast com/nd/android/forumsdk/business/bean/structure/MyReceivePraise
aload 2
checkcast com/nd/android/forumsdk/business/bean/structure/MyReceivePraise
invokevirtual com/nd/schoollife/ui/square/adapter/MsgReceivePraiseListViewAdapter/isDuplicate(Lcom/nd/android/forumsdk/business/bean/structure/MyReceivePraise;Lcom/nd/android/forumsdk/business/bean/structure/MyReceivePraise;)Z
ireturn
.limit locals 3
.limit stack 3
.end method
