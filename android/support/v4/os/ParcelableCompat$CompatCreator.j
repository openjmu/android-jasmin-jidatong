.bytecode 50.0
.class synchronized android/support/v4/os/ParcelableCompat$CompatCreator
.super java/lang/Object
.implements android/os/Parcelable$Creator
.signature "<T:Ljava/lang/Object;>Ljava/lang/Object;Landroid/os/Parcelable$Creator<TT;>;"
.inner class static CompatCreator inner android/support/v4/os/ParcelableCompat$CompatCreator outer android/support/v4/os/ParcelableCompat

.field final 'mCallbacks' Landroid/support/v4/os/ParcelableCompatCreatorCallbacks; signature "Landroid/support/v4/os/ParcelableCompatCreatorCallbacks<TT;>;"

.method public <init>(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)V
.signature "(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks<TT;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield android/support/v4/os/ParcelableCompat$CompatCreator/mCallbacks Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;
return
.limit locals 2
.limit stack 2
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.signature "(Landroid/os/Parcel;)TT;"
aload 0
getfield android/support/v4/os/ParcelableCompat$CompatCreator/mCallbacks Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;
aload 1
aconst_null
invokeinterface android/support/v4/os/ParcelableCompatCreatorCallbacks/createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object; 2
areturn
.limit locals 2
.limit stack 3
.end method

.method public newArray(I)[Ljava/lang/Object;
.signature "(I)[TT;"
aload 0
getfield android/support/v4/os/ParcelableCompat$CompatCreator/mCallbacks Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;
iload 1
invokeinterface android/support/v4/os/ParcelableCompatCreatorCallbacks/newArray(I)[Ljava/lang/Object; 1
areturn
.limit locals 2
.limit stack 2
.end method
