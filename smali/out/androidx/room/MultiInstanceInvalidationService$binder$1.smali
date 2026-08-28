.class public final Landroidx/room/MultiInstanceInvalidationService$binder$1;
.super Landroidx/room/IMultiInstanceInvalidationService$Stub;
.source "MultiInstanceInvalidationService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/MultiInstanceInvalidationService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J%\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0007H\u0016\u00a2\u0006\u0002\u0010\tJ\u001a\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0008H\u0016J\u0018\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "androidx/room/MultiInstanceInvalidationService$binder$1",
        "Landroidx/room/IMultiInstanceInvalidationService$Stub;",
        "broadcastInvalidation",
        "",
        "clientId",
        "",
        "tables",
        "",
        "",
        "(I[Ljava/lang/String;)V",
        "registerCallback",
        "callback",
        "Landroidx/room/IMultiInstanceInvalidationCallback;",
        "name",
        "unregisterCallback",
        "room-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/room/MultiInstanceInvalidationService;


# direct methods
.method constructor <init>(Landroidx/room/MultiInstanceInvalidationService;)V
    .registers 2

    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationService$binder$1;->this$0:Landroidx/room/MultiInstanceInvalidationService;

    .line 52
    invoke-direct {p0}, Landroidx/room/IMultiInstanceInvalidationService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public broadcastInvalidation(I[Ljava/lang/String;)V
    .registers 11

    const-string v0, "tables"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationService$binder$1;->this$0:Landroidx/room/MultiInstanceInvalidationService;

    invoke-virtual {v0}, Landroidx/room/MultiInstanceInvalidationService;->getCallbackList$room_runtime_release()Landroid/os/RemoteCallbackList;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationService$binder$1;->this$0:Landroidx/room/MultiInstanceInvalidationService;

    monitor-enter v0

    .line 91
    :try_start_e
    invoke-virtual {v1}, Landroidx/room/MultiInstanceInvalidationService;->getClientNames$room_runtime_release()Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_27

    const-string p1, "ROOM"

    const-string p2, "Remote invalidation client ID not registered"

    .line 93
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_8b

    .line 94
    monitor-exit v0

    return-void

    .line 96
    :cond_27
    :try_start_27
    invoke-virtual {v1}, Landroidx/room/MultiInstanceInvalidationService;->getCallbackList$room_runtime_release()Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_8b

    const/4 v4, 0x0

    :goto_30
    if-ge v4, v3, :cond_80

    .line 99
    :try_start_32
    invoke-virtual {v1}, Landroidx/room/MultiInstanceInvalidationService;->getCallbackList$room_runtime_release()Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 100
    invoke-virtual {v1}, Landroidx/room/MultiInstanceInvalidationService;->getClientNames$room_runtime_release()Ljava/util/Map;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eq p1, v5, :cond_74

    .line 101
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_59
    .catchall {:try_start_32 .. :try_end_59} :catchall_77

    if-nez v5, :cond_5c

    goto :goto_74

    .line 107
    :cond_5c
    :try_start_5c
    invoke-virtual {v1}, Landroidx/room/MultiInstanceInvalidationService;->getCallbackList$room_runtime_release()Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroidx/room/IMultiInstanceInvalidationCallback;

    invoke-interface {v5, p2}, Landroidx/room/IMultiInstanceInvalidationCallback;->onInvalidation([Ljava/lang/String;)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_69} :catch_6a
    .catchall {:try_start_5c .. :try_end_69} :catchall_77

    goto :goto_74

    :catch_6a
    move-exception v5

    :try_start_6b
    const-string v6, "ROOM"

    const-string v7, "Error invoking a remote callback"

    .line 109
    check-cast v5, Ljava/lang/Throwable;

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_74
    .catchall {:try_start_6b .. :try_end_74} :catchall_77

    :cond_74
    :goto_74
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :catchall_77
    move-exception p1

    .line 113
    :try_start_78
    invoke-virtual {v1}, Landroidx/room/MultiInstanceInvalidationService;->getCallbackList$room_runtime_release()Landroid/os/RemoteCallbackList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw p1

    :cond_80
    invoke-virtual {v1}, Landroidx/room/MultiInstanceInvalidationService;->getCallbackList$room_runtime_release()Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 115
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_89
    .catchall {:try_start_78 .. :try_end_89} :catchall_8b

    .line 90
    monitor-exit v0

    return-void

    :catchall_8b
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public registerCallback(Landroidx/room/IMultiInstanceInvalidationCallback;Ljava/lang/String;)I
    .registers 9

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_9

    return v0

    .line 61
    :cond_9
    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationService$binder$1;->this$0:Landroidx/room/MultiInstanceInvalidationService;

    invoke-virtual {v1}, Landroidx/room/MultiInstanceInvalidationService;->getCallbackList$room_runtime_release()Landroid/os/RemoteCallbackList;

    move-result-object v1

    iget-object v2, p0, Landroidx/room/MultiInstanceInvalidationService$binder$1;->this$0:Landroidx/room/MultiInstanceInvalidationService;

    monitor-enter v1

    .line 62
    :try_start_12
    invoke-virtual {v2}, Landroidx/room/MultiInstanceInvalidationService;->getMaxClientId$room_runtime_release()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/room/MultiInstanceInvalidationService;->setMaxClientId$room_runtime_release(I)V

    invoke-virtual {v2}, Landroidx/room/MultiInstanceInvalidationService;->getMaxClientId$room_runtime_release()I

    move-result v3

    .line 64
    invoke-virtual {v2}, Landroidx/room/MultiInstanceInvalidationService;->getCallbackList$room_runtime_release()Landroid/os/RemoteCallbackList;

    move-result-object v4

    check-cast p1, Landroid/os/IInterface;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 65
    invoke-virtual {v2}, Landroidx/room/MultiInstanceInvalidationService;->getClientNames$room_runtime_release()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    goto :goto_48

    .line 68
    :cond_3c
    invoke-virtual {v2}, Landroidx/room/MultiInstanceInvalidationService;->getMaxClientId$room_runtime_release()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v2, p1}, Landroidx/room/MultiInstanceInvalidationService;->setMaxClientId$room_runtime_release(I)V

    invoke-virtual {v2}, Landroidx/room/MultiInstanceInvalidationService;->getMaxClientId$room_runtime_release()I
    :try_end_48
    .catchall {:try_start_12 .. :try_end_48} :catchall_4a

    .line 64
    :goto_48
    monitor-exit v1

    return v0

    :catchall_4a
    move-exception p1

    monitor-exit v1

    throw p1
.end method

.method public unregisterCallback(Landroidx/room/IMultiInstanceInvalidationCallback;I)V
    .registers 6

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationService$binder$1;->this$0:Landroidx/room/MultiInstanceInvalidationService;

    invoke-virtual {v0}, Landroidx/room/MultiInstanceInvalidationService;->getCallbackList$room_runtime_release()Landroid/os/RemoteCallbackList;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationService$binder$1;->this$0:Landroidx/room/MultiInstanceInvalidationService;

    monitor-enter v0

    .line 82
    :try_start_e
    invoke-virtual {v1}, Landroidx/room/MultiInstanceInvalidationService;->getCallbackList$room_runtime_release()Landroid/os/RemoteCallbackList;

    move-result-object v2

    check-cast p1, Landroid/os/IInterface;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 83
    invoke-virtual {v1}, Landroidx/room/MultiInstanceInvalidationService;->getClientNames$room_runtime_release()Ljava/util/Map;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_27

    .line 81
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p1

    monitor-exit v0

    throw p1
.end method
