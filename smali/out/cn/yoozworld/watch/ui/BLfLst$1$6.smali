.class Lcn/yoozworld/watch/ui/BLfLst$1$6;
.super Ljava/lang/Object;
.source "BLfLst.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/yoozworld/watch/ui/BLfLst$1;->onTransferFail(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/yoozworld/watch/ui/BLfLst$1;

.field final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Lcn/yoozworld/watch/ui/BLfLst$1;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 496
    iput-object p1, p0, Lcn/yoozworld/watch/ui/BLfLst$1$6;->this$1:Lcn/yoozworld/watch/ui/BLfLst$1;

    iput p2, p0, Lcn/yoozworld/watch/ui/BLfLst$1$6;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 501
    new-instance v0, Lcn/yoozworld/watch/utils/TransFileBean;

    const/4 v1, 0x5

    iget v2, p0, Lcn/yoozworld/watch/ui/BLfLst$1$6;->val$errorCode:I

    invoke-direct {v0, v1, v2}, Lcn/yoozworld/watch/utils/TransFileBean;-><init>(II)V

    .line 502
    iget-object v1, p0, Lcn/yoozworld/watch/ui/BLfLst$1$6;->this$1:Lcn/yoozworld/watch/ui/BLfLst$1;

    iget-object v1, v1, Lcn/yoozworld/watch/ui/BLfLst$1;->this$0:Lcn/yoozworld/watch/ui/BLfLst;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 503
    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "translateStatus"

    .line 502
    invoke-virtual {v1, v2, v0}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethodEventByJSONData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
