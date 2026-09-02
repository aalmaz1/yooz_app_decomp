.class Lcn/yoozworld/watch/ui/BLfLst$8;
.super Ljava/lang/Object;
.source "BLfLst.java"

# interfaces
.implements Lcn/baos/watch/sdk/interfac/syncdata/SyncStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/yoozworld/watch/ui/BLfLst;->switchFlutterData(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/yoozworld/watch/ui/BLfLst;


# direct methods
.method constructor <init>(Lcn/yoozworld/watch/ui/BLfLst;)V
    .registers 2

    .line 1642
    iput-object p1, p0, Lcn/yoozworld/watch/ui/BLfLst$8;->this$0:Lcn/yoozworld/watch/ui/BLfLst;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartSync()V
    .registers 3

    const-string v0, "\u6570\u636e\u540c\u6b65\u5f00\u59cb"

    .line 1645
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1648
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst$8;->this$0:Lcn/yoozworld/watch/ui/BLfLst;

    invoke-static {v0}, Lcn/yoozworld/watch/ui/BLfLst;->-$$Nest$fgetjsonMessageChannel(Lcn/yoozworld/watch/ui/BLfLst;)Lio/flutter/plugin/common/BasicMessageChannel;

    move-result-object v0

    const-string v1, "{\"method\":\"syncData\",\"data\":{\"syncData\":0}}"

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->send(Ljava/lang/Object;)V

    return-void
.end method

.method public onSyncFinish()V
    .registers 3

    .line 1654
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst$8;->this$0:Lcn/yoozworld/watch/ui/BLfLst;

    invoke-static {v0}, Lcn/yoozworld/watch/ui/BLfLst;->-$$Nest$fgetmMainHandler(Lcn/yoozworld/watch/ui/BLfLst;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$8$1;

    invoke-direct {v1, p0}, Lcn/yoozworld/watch/ui/BLfLst$8$1;-><init>(Lcn/yoozworld/watch/ui/BLfLst$8;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "\u6570\u636e\u540c\u6b65\u7ed3\u675f"

    .line 1662
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method
