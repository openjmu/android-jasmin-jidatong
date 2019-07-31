.bytecode 50.0
.class public synchronized com/nd/rj/common/login/impl/NdUNewLoginDataMove
.super java/lang/Object
.implements com/nd/rj/common/login/interfaces/INewLoginDataMove

.field private 'bindUsers' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/business/login/BindUser;>;"

.field private 'pwd' Ljava/lang/String;

.field private 'sysTime' J

.field private 'userDatas' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/rj/common/login/entity/OapUser;>;"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private doMove(Landroid/database/sqlite/SQLiteDatabase;)V
aload 0
aload 0
getfield com/nd/rj/common/login/impl/NdUNewLoginDataMove/userDatas Ljava/util/List;
invokespecial com/nd/rj/common/login/impl/NdUNewLoginDataMove/getMaxDtUser(Ljava/util/List;)Lcom/nd/rj/common/login/entity/OapUser;
astore 2
aload 0
getfield com/nd/rj/common/login/impl/NdUNewLoginDataMove/userDatas Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L0:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/rj/common/login/entity/OapUser
astore 4
aload 4
iconst_0
putfield com/nd/rj/common/login/entity/OapUser/isAutoLogin Z
aload 4
iconst_0
putfield com/nd/rj/common/login/entity/OapUser/isCurrentUser Z
aload 1
aload 4
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getSaveSql(Lcom/nd/rj/common/login/entity/OapUser;)Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
goto L0
L1:
aload 2
ifnull L2
aload 1
ldc "update oap_user set is_auto_login=1,is_current_user=1 where uap_uid=%d and oap_uid=%d"
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 2
getfield com/nd/rj/common/login/entity/OapUser/uapUid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_1
aload 2
getfield com/nd/rj/common/login/entity/OapUser/oapUid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
L2:
aload 0
getfield com/nd/rj/common/login/impl/NdUNewLoginDataMove/bindUsers Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L3:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/business/login/BindUser
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getBindInsertSql(Lcom/product/android/business/login/BindUser;)Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
goto L3
L4:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
aload 0
getfield com/nd/rj/common/login/impl/NdUNewLoginDataMove/pwd Ljava/lang/String;
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/setUserPwd(Landroid/content/Context;Ljava/lang/String;)V
aload 1
ldc "drop table if exists userinfo"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/login/impl/NdUNewLoginDataMove/userDatas Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
aconst_null
putfield com/nd/rj/common/login/impl/NdUNewLoginDataMove/userDatas Ljava/util/List;
aload 0
getfield com/nd/rj/common/login/impl/NdUNewLoginDataMove/bindUsers Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
aconst_null
putfield com/nd/rj/common/login/impl/NdUNewLoginDataMove/bindUsers Ljava/util/List;
return
.limit locals 5
.limit stack 7
.end method

.method private getMaxDtUser(Ljava/util/List;)Lcom/nd/rj/common/login/entity/OapUser;
.signature "(Ljava/util/List<Lcom/nd/rj/common/login/entity/OapUser;>;)Lcom/nd/rj/common/login/entity/OapUser;"
aconst_null
astore 6
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/size()I 0
ifgt L1
L0:
aconst_null
areturn
L1:
lconst_0
lstore 2
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 7
aload 6
astore 1
L2:
aload 7
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 7
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/rj/common/login/entity/OapUser
astore 6
aload 6
getfield com/nd/rj/common/login/entity/OapUser/lastLoginTime Ljava/lang/String;
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/parseLong(Ljava/lang/String;)J
lstore 4
lload 2
lload 4
lcmp
ifge L2
lload 4
lstore 2
aload 6
astore 1
goto L2
L3:
aload 1
areturn
.limit locals 8
.limit stack 4
.end method

.method private init()V
aload 0
invokestatic java/lang/System/currentTimeMillis()J
ldc2_w 86400000L
lsub
putfield com/nd/rj/common/login/impl/NdUNewLoginDataMove/sysTime J
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/rj/common/login/impl/NdUNewLoginDataMove/userDatas Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/rj/common/login/impl/NdUNewLoginDataMove/bindUsers Ljava/util/List;
return
.limit locals 1
.limit stack 5
.end method

.method private preMoveAccount(Landroid/database/sqlite/SQLiteDatabase;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/lang/Exception from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch java/lang/Exception from L10 to L11 using L2
.catch all from L10 to L11 using L3
.catch java/lang/Exception from L12 to L13 using L2
.catch all from L12 to L13 using L3
.catch java/lang/Exception from L14 to L15 using L2
.catch all from L14 to L15 using L3
.catch java/lang/Exception from L16 to L17 using L2
.catch all from L16 to L17 using L3
.catch java/lang/Exception from L18 to L19 using L2
.catch all from L18 to L19 using L3
.catch java/lang/Exception from L20 to L21 using L2
.catch all from L20 to L21 using L3
.catch java/lang/Exception from L22 to L23 using L2
.catch all from L22 to L23 using L3
.catch java/lang/Exception from L24 to L25 using L2
.catch all from L24 to L25 using L3
.catch java/lang/Exception from L26 to L27 using L2
.catch all from L26 to L27 using L3
.catch java/lang/Exception from L28 to L29 using L2
.catch all from L28 to L29 using L3
.catch java/lang/Exception from L30 to L31 using L2
.catch all from L30 to L31 using L3
.catch java/lang/Exception from L32 to L33 using L2
.catch all from L32 to L33 using L3
.catch all from L34 to L35 using L3
aconst_null
astore 4
aconst_null
astore 3
L0:
aload 1
ldc "select * from userinfo"
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 1
L1:
aload 1
ifnull L36
L37:
aload 1
astore 3
aload 1
astore 4
L4:
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L36
L5:
aload 1
astore 3
aload 1
astore 4
L6:
new com/nd/rj/common/login/entity/OapUser
dup
invokespecial com/nd/rj/common/login/entity/OapUser/<init>()V
astore 5
L7:
aload 1
astore 3
aload 1
astore 4
L8:
aload 5
aload 1
aload 1
ldc "uap_uid"
invokevirtual java/lang/String/toUpperCase()Ljava/lang/String;
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/rj/common/login/entity/OapUser/uapUid J
L9:
aload 1
astore 3
aload 1
astore 4
L10:
aload 5
aload 1
aload 1
ldc "user_name"
invokevirtual java/lang/String/toUpperCase()Ljava/lang/String;
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/rj/common/login/entity/OapUser/account Ljava/lang/String;
L11:
aload 1
astore 3
aload 1
astore 4
L12:
aload 5
aload 1
aload 1
ldc "user_nick_name"
invokevirtual java/lang/String/toUpperCase()Ljava/lang/String;
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/rj/common/login/entity/OapUser/nickName Ljava/lang/String;
L13:
aload 1
astore 3
aload 1
astore 4
L14:
aload 5
aload 1
aload 1
ldc "oap_unit_id"
invokevirtual java/lang/String/toUpperCase()Ljava/lang/String;
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/rj/common/login/entity/OapUser/oapUnitId I
L15:
aload 1
astore 3
aload 1
astore 4
L16:
aload 5
aload 1
aload 1
ldc "oap_uid"
invokevirtual java/lang/String/toUpperCase()Ljava/lang/String;
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/rj/common/login/entity/OapUser/oapUid J
L17:
aload 1
astore 3
aload 1
astore 4
L18:
aload 5
ldc "true"
aload 1
aload 1
ldc "isautologin"
invokevirtual java/lang/String/toUpperCase()Ljava/lang/String;
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
putfield com/nd/rj/common/login/entity/OapUser/isAutoLogin Z
L19:
aload 1
astore 3
aload 1
astore 4
L20:
aload 5
ldc "true"
aload 1
aload 1
ldc "issaveaccount"
invokevirtual java/lang/String/toUpperCase()Ljava/lang/String;
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
putfield com/nd/rj/common/login/entity/OapUser/isCurrentUser Z
L21:
aload 1
astore 3
aload 1
astore 4
L22:
aload 0
aload 1
aload 1
ldc "USER_PASS_MD5"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/rj/common/login/impl/NdUNewLoginDataMove/pwd Ljava/lang/String;
L23:
aload 1
astore 3
aload 1
astore 4
L24:
aload 5
iconst_1
putfield com/nd/rj/common/login/entity/OapUser/type I
L25:
aload 1
astore 3
aload 1
astore 4
L26:
aload 5
iconst_0
putfield com/nd/rj/common/login/entity/OapUser/loginType I
L27:
aload 1
astore 3
aload 1
astore 4
L28:
aload 1
aload 1
ldc "last_login_dt"
invokevirtual java/lang/String/toUpperCase()Ljava/lang/String;
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
istore 2
L29:
aload 1
astore 3
aload 1
astore 4
L30:
aload 5
aload 0
getfield com/nd/rj/common/login/impl/NdUNewLoginDataMove/sysTime J
iload 2
sipush 1000
imul
i2l
ladd
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
putfield com/nd/rj/common/login/entity/OapUser/lastLoginTime Ljava/lang/String;
L31:
aload 1
astore 3
aload 1
astore 4
L32:
aload 0
getfield com/nd/rj/common/login/impl/NdUNewLoginDataMove/userDatas Ljava/util/List;
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L33:
goto L37
L2:
astore 1
aload 3
astore 4
L34:
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
L35:
aload 3
ifnull L38
aload 3
invokeinterface android/database/Cursor/isClosed()Z 0
ifeq L38
aload 3
invokeinterface android/database/Cursor/close()V 0
L38:
return
L36:
aload 1
ifnull L38
aload 1
invokeinterface android/database/Cursor/isClosed()Z 0
ifeq L38
aload 1
invokeinterface android/database/Cursor/close()V 0
return
L3:
astore 1
aload 4
ifnull L39
aload 4
invokeinterface android/database/Cursor/isClosed()Z 0
ifeq L39
aload 4
invokeinterface android/database/Cursor/close()V 0
L39:
aload 1
athrow
.limit locals 6
.limit stack 5
.end method

.method private preMoveBindUser(Landroid/database/sqlite/SQLiteDatabase;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L6 to L7 using L2
.catch java/lang/Exception from L8 to L9 using L2
.catch java/lang/Exception from L10 to L11 using L2
L0:
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 1
aload 0
getfield com/nd/rj/common/login/impl/NdUNewLoginDataMove/userDatas Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/rj/common/login/entity/OapUser
astore 4
aload 1
aload 4
getfield com/nd/rj/common/login/entity/OapUser/oapUid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
ifnonnull L1
aload 1
aload 4
getfield com/nd/rj/common/login/entity/OapUser/oapUid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aload 4
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L3:
goto L1
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
L12:
return
L4:
aload 1
invokeinterface java/util/Map/size()I 0
newarray long
astore 3
aload 1
invokeinterface java/util/Map/keySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 4
L5:
iconst_0
istore 2
L6:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L8
aload 3
iload 2
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lastore
L7:
iload 2
iconst_1
iadd
istore 2
goto L6
L8:
aload 1
invokeinterface java/util/Map/clear()V 0
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
aload 1
aload 3
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10024
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
ifne L12
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L12
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof java/util/List
ifeq L12
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast java/util/List
astore 1
L9:
aload 1
ifnull L12
L10:
aload 0
getfield com/nd/rj/common/login/impl/NdUNewLoginDataMove/bindUsers Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L11:
return
.limit locals 5
.limit stack 4
.end method

.method public moveData(Landroid/database/sqlite/SQLiteDatabase;)V
aload 0
invokespecial com/nd/rj/common/login/impl/NdUNewLoginDataMove/init()V
aload 0
aload 1
invokespecial com/nd/rj/common/login/impl/NdUNewLoginDataMove/preMoveAccount(Landroid/database/sqlite/SQLiteDatabase;)V
aload 0
aload 1
invokespecial com/nd/rj/common/login/impl/NdUNewLoginDataMove/preMoveBindUser(Landroid/database/sqlite/SQLiteDatabase;)V
aload 0
aload 1
invokespecial com/nd/rj/common/login/impl/NdUNewLoginDataMove/doMove(Landroid/database/sqlite/SQLiteDatabase;)V
return
.limit locals 2
.limit stack 2
.end method
