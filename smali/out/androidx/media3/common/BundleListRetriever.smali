.class public final Landroidx/media3/common/BundleListRetriever;
.super Landroid/os/Binder;
.source "BundleListRetriever.java"


# static fields
.field private static final REPLY_BREAK:I = 0x2

.field private static final REPLY_CONTINUE:I = 0x1

.field private static final REPLY_END_OF_LIST:I

.field private static final SUGGESTED_MAX_IPC_SIZE:I


# instance fields
.field private final list:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 60
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_b

    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    move-result v0

    goto :goto_d

    :cond_b
    const/high16 v0, 0x10000

    :goto_d
    sput v0, Landroidx/media3/common/BundleListRetriever;->SUGGESTED_MAX_IPC_SIZE:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 70
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/BundleListRetriever;->list:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public static getList(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 102
    instance-of v0, p0, Landroidx/media3/common/BundleListRetriever;

    if-eqz v0, :cond_9

    .line 104
    check-cast p0, Landroidx/media3/common/BundleListRetriever;

    iget-object p0, p0, Landroidx/media3/common/BundleListRetriever;->list:Lcom/google/common/collect/ImmutableList;

    return-object p0

    .line 106
    :cond_9
    invoke-static {p0}, Landroidx/media3/common/BundleListRetriever;->getListFromRemoteBinder(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method static getListFromRemoteBinder(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 111
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v4, v1

    move v3, v2

    :goto_8
    if-eqz v3, :cond_45

    .line 115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 118
    :try_start_12
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_3d

    .line 120
    :try_start_15
    invoke-interface {p0, v2, v3, v5, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_36
    .catchall {:try_start_15 .. :try_end_18} :catchall_3d

    .line 124
    :goto_18
    :try_start_18
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v2, :cond_2e

    .line 125
    invoke-virtual {v5}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_3d

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 129
    :cond_2e
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    move v3, v6

    goto :goto_8

    :catch_36
    move-exception p0

    .line 122
    :try_start_37
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception p0

    .line 129
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 131
    throw p0

    .line 133
    :cond_45
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_8
    const/4 p1, 0x0

    if-nez p3, :cond_c

    return p1

    .line 84
    :cond_c
    iget-object p4, p0, Landroidx/media3/common/BundleListRetriever;->list:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p4}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p4

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    :goto_16
    if-ge p2, p4, :cond_31

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    sget v2, Landroidx/media3/common/BundleListRetriever;->SUGGESTED_MAX_IPC_SIZE:I

    if-ge v1, v2, :cond_31

    .line 87
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object v1, p0, Landroidx/media3/common/BundleListRetriever;->list:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, p2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_16

    :cond_31
    if-ge p2, p4, :cond_34

    const/4 p1, 0x2

    .line 91
    :cond_34
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method
