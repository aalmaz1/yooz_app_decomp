.class Lcn/yoozworld/watch/ui/BLfLst$1;
.super Ljava/lang/Object;
.source "BLfLst.java"

# interfaces
.implements Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/yoozworld/watch/ui/BLfLst;->transferFile(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/yoozworld/watch/ui/BLfLst;


# direct methods
.method constructor <init>(Lcn/yoozworld/watch/ui/BLfLst;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcn/yoozworld/watch/ui/BLfLst$1;->this$0:Lcn/yoozworld/watch/ui/BLfLst;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFile(I)V
    .locals 0

    return-void
.end method

.method public onLoadFileFail()V
    .locals 2

    .line 429
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst$1;->this$0:Lcn/yoozworld/watch/ui/BLfLst;

    invoke-static {v0}, Lcn/yoozworld/watch/ui/BLfLst;->-$$Nest$fgetmMainHandler(Lcn/yoozworld/watch/ui/BLfLst;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$1$1;

    invoke-direct {v1, p0}, Lcn/yoozworld/watch/ui/BLfLst$1$1;-><init>(Lcn/yoozworld/watch/ui/BLfLst$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTransferFail(I)V
    .locals 2

    .line 496
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst$1;->this$0:Lcn/yoozworld/watch/ui/BLfLst;

    invoke-static {v0}, Lcn/yoozworld/watch/ui/BLfLst;->-$$Nest$fgetmMainHandler(Lcn/yoozworld/watch/ui/BLfLst;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$1$6;

    invoke-direct {v1, p0, p1}, Lcn/yoozworld/watch/ui/BLfLst$1$6;-><init>(Lcn/yoozworld/watch/ui/BLfLst$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTransferFinish()V
    .locals 2

    .line 482
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst$1;->this$0:Lcn/yoozworld/watch/ui/BLfLst;

    invoke-static {v0}, Lcn/yoozworld/watch/ui/BLfLst;->-$$Nest$fgetmMainHandler(Lcn/yoozworld/watch/ui/BLfLst;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$1$5;

    invoke-direct {v1, p0}, Lcn/yoozworld/watch/ui/BLfLst$1$5;-><init>(Lcn/yoozworld/watch/ui/BLfLst$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTransferProgress(I)V
    .locals 2

    .line 468
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst$1;->this$0:Lcn/yoozworld/watch/ui/BLfLst;

    invoke-static {v0}, Lcn/yoozworld/watch/ui/BLfLst;->-$$Nest$fgetmMainHandler(Lcn/yoozworld/watch/ui/BLfLst;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$1$4;

    invoke-direct {v1, p0, p1}, Lcn/yoozworld/watch/ui/BLfLst$1$4;-><init>(Lcn/yoozworld/watch/ui/BLfLst$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTranslateStart()V
    .locals 2

    .line 453
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst$1;->this$0:Lcn/yoozworld/watch/ui/BLfLst;

    invoke-static {v0}, Lcn/yoozworld/watch/ui/BLfLst;->-$$Nest$fgetmMainHandler(Lcn/yoozworld/watch/ui/BLfLst;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$1$3;

    invoke-direct {v1, p0}, Lcn/yoozworld/watch/ui/BLfLst$1$3;-><init>(Lcn/yoozworld/watch/ui/BLfLst$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onWaitWatchStartTranslate()V
    .locals 2

    .line 442
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst$1;->this$0:Lcn/yoozworld/watch/ui/BLfLst;

    invoke-static {v0}, Lcn/yoozworld/watch/ui/BLfLst;->-$$Nest$fgetmMainHandler(Lcn/yoozworld/watch/ui/BLfLst;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$1$2;

    invoke-direct {v1, p0}, Lcn/yoozworld/watch/ui/BLfLst$1$2;-><init>(Lcn/yoozworld/watch/ui/BLfLst$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
