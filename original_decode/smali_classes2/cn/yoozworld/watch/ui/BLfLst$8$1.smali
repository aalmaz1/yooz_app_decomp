.class Lcn/yoozworld/watch/ui/BLfLst$8$1;
.super Ljava/lang/Object;
.source "BLfLst.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/yoozworld/watch/ui/BLfLst$8;->onSyncFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/yoozworld/watch/ui/BLfLst$8;


# direct methods
.method constructor <init>(Lcn/yoozworld/watch/ui/BLfLst$8;)V
    .locals 0

    .line 1654
    iput-object p1, p0, Lcn/yoozworld/watch/ui/BLfLst$8$1;->this$1:Lcn/yoozworld/watch/ui/BLfLst$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1658
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst$8$1;->this$1:Lcn/yoozworld/watch/ui/BLfLst$8;

    iget-object v0, v0, Lcn/yoozworld/watch/ui/BLfLst$8;->this$0:Lcn/yoozworld/watch/ui/BLfLst;

    invoke-static {v0}, Lcn/yoozworld/watch/ui/BLfLst;->-$$Nest$fgetjsonMessageChannel(Lcn/yoozworld/watch/ui/BLfLst;)Lio/flutter/plugin/common/BasicMessageChannel;

    move-result-object v0

    const-string v1, "{\"method\":\"syncData\",\"data\":{\"syncData\":1}}"

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->send(Ljava/lang/Object;)V

    return-void
.end method
