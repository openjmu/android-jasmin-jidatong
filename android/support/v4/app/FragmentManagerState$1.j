.bytecode 50.0
.class final synchronized android/support/v4/app/FragmentManagerState$1
.super java/lang/Object
.implements android/os/Parcelable$Creator
.signature "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Landroid/support/v4/app/FragmentManagerState;>;"
.enclosing method android/support/v4/app/FragmentManagerState
.inner class static final inner android/support/v4/app/FragmentManagerState$1

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/app/FragmentManagerState;
new android/support/v4/app/FragmentManagerState
dup
aload 1
invokespecial android/support/v4/app/FragmentManagerState/<init>(Landroid/os/Parcel;)V
areturn
.limit locals 2
.limit stack 3
.end method

.method public volatile synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
aload 0
aload 1
invokevirtual android/support/v4/app/FragmentManagerState$1/createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/app/FragmentManagerState;
areturn
.limit locals 2
.limit stack 2
.end method

.method public newArray(I)[Landroid/support/v4/app/FragmentManagerState;
iload 1
anewarray android/support/v4/app/FragmentManagerState
areturn
.limit locals 2
.limit stack 1
.end method

.method public volatile synthetic newArray(I)[Ljava/lang/Object;
aload 0
iload 1
invokevirtual android/support/v4/app/FragmentManagerState$1/newArray(I)[Landroid/support/v4/app/FragmentManagerState;
areturn
.limit locals 2
.limit stack 2
.end method
