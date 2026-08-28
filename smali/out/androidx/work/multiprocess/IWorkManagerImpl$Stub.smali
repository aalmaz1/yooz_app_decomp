.class public abstract Landroidx/work/multiprocess/IWorkManagerImpl$Stub;
.super Landroid/os/Binder;
.source "IWorkManagerImpl.java"

# interfaces
.implements Landroidx/work/multiprocess/IWorkManagerImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/multiprocess/IWorkManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/multiprocess/IWorkManagerImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_cancelAllWork:I = 0x7

.field static final TRANSACTION_cancelAllWorkByTag:I = 0x5

.field static final TRANSACTION_cancelUniqueWork:I = 0x6

.field static final TRANSACTION_cancelWorkById:I = 0x4

.field static final TRANSACTION_enqueueContinuation:I = 0x3

.field static final TRANSACTION_enqueueWorkRequests:I = 0x1

.field static final TRANSACTION_queryWorkInfo:I = 0x8

.field static final TRANSACTION_setForegroundAsync:I = 0xa

.field static final TRANSACTION_setProgress:I = 0x9

.field static final TRANSACTION_updateUniquePeriodicWorkRequest:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "androidx.work.multiprocess.IWorkManagerImpl"

    .line 62
    invoke-virtual {p0, p0, v0}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImpl;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "androidx.work.multiprocess.IWorkManagerImpl"

    .line 73
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 74
    instance-of v1, v0, Landroidx/work/multiprocess/IWorkManagerImpl;

    if-eqz v1, :cond_13

    .line 75
    check-cast v0, Landroidx/work/multiprocess/IWorkManagerImpl;

    return-object v0

    .line 77
    :cond_13
    new-instance v0, Landroidx/work/multiprocess/IWorkManagerImpl$Stub$Proxy;

    invoke-direct {v0, p0}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "androidx.work.multiprocess.IWorkManagerImpl"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 87
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_bc

    packed-switch p1, :pswitch_data_c0

    .line 191
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 183
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    .line 186
    invoke-virtual {p0, p1, p2}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->setForegroundAsync([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    goto/16 :goto_bb

    .line 174
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    .line 177
    invoke-virtual {p0, p1, p2}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->setProgress([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    goto/16 :goto_bb

    .line 165
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    .line 168
    invoke-virtual {p0, p1, p2}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->queryWorkInfo([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    goto :goto_bb

    .line 158
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p1

    .line 159
    invoke-virtual {p0, p1}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->cancelAllWork(Landroidx/work/multiprocess/IWorkManagerImplCallback;)V

    goto :goto_bb

    .line 149
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    .line 152
    invoke-virtual {p0, p1, p2}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->cancelUniqueWork(Ljava/lang/String;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V

    goto :goto_bb

    .line 140
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    .line 143
    invoke-virtual {p0, p1, p2}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->cancelAllWorkByTag(Ljava/lang/String;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V

    goto :goto_bb

    .line 131
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    .line 134
    invoke-virtual {p0, p1, p2}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->cancelWorkById(Ljava/lang/String;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V

    goto :goto_bb

    .line 122
    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    .line 125
    invoke-virtual {p0, p1, p2}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->enqueueContinuation([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    goto :goto_bb

    .line 111
    :pswitch_98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p3

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    .line 116
    invoke-virtual {p0, p1, p3, p2}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->updateUniquePeriodicWorkRequest(Ljava/lang/String;[BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    goto :goto_bb

    .line 102
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    .line 105
    invoke-virtual {p0, p1, p2}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->enqueueWorkRequests([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    :goto_bb
    return v1

    .line 93
    :cond_bc
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_ac
        :pswitch_98
        :pswitch_88
        :pswitch_78
        :pswitch_68
        :pswitch_58
        :pswitch_4c
        :pswitch_3c
        :pswitch_2b
        :pswitch_1a
    .end packed-switch
.end method
