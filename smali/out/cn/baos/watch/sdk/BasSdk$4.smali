.class Lcn/baos/watch/sdk/BasSdk$4;
.super Ljava/lang/Object;
.source "BasSdk.java"

# interfaces
.implements Lcn/baos/watch/sdk/interfac/syncdata/SyncStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/BasSdk;->syncData(Lcn/baos/watch/sdk/manager/api/SyncDataListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$syncDataListener:Lcn/baos/watch/sdk/manager/api/SyncDataListener;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/manager/api/SyncDataListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 819
    iput-object p1, p0, Lcn/baos/watch/sdk/BasSdk$4;->val$syncDataListener:Lcn/baos/watch/sdk/manager/api/SyncDataListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartSync()V
    .registers 2

    const-string v0, "\u6570\u636e\u540c\u6b65\u5f00\u59cb"

    .line 822
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onSyncFinish()V
    .registers 2

    const-string v0, "\u6570\u636e\u540c\u6b65\u7ed3\u675f"

    .line 828
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 829
    iget-object v0, p0, Lcn/baos/watch/sdk/BasSdk$4;->val$syncDataListener:Lcn/baos/watch/sdk/manager/api/SyncDataListener;

    if-eqz v0, :cond_c

    .line 830
    invoke-interface {v0}, Lcn/baos/watch/sdk/manager/api/SyncDataListener;->onSyncFinish()V

    :cond_c
    return-void
.end method
