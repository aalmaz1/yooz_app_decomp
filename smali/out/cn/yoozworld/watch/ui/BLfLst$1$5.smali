.class Lcn/yoozworld/watch/ui/BLfLst$1$5;
.super Ljava/lang/Object;
.source "BLfLst.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/yoozworld/watch/ui/BLfLst$1;->onTransferFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/yoozworld/watch/ui/BLfLst$1;


# direct methods
.method constructor <init>(Lcn/yoozworld/watch/ui/BLfLst$1;)V
    .registers 2

    .line 482
    iput-object p1, p0, Lcn/yoozworld/watch/ui/BLfLst$1$5;->this$1:Lcn/yoozworld/watch/ui/BLfLst$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 487
    new-instance v0, Lcn/yoozworld/watch/utils/TransFileBean;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/yoozworld/watch/utils/TransFileBean;-><init>(II)V

    .line 488
    iget-object v1, p0, Lcn/yoozworld/watch/ui/BLfLst$1$5;->this$1:Lcn/yoozworld/watch/ui/BLfLst$1;

    iget-object v1, v1, Lcn/yoozworld/watch/ui/BLfLst$1;->this$0:Lcn/yoozworld/watch/ui/BLfLst;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 489
    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "translateStatus"

    .line 488
    invoke-virtual {v1, v2, v0}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethodEventByJSONData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
