.class Lcn/yoozworld/watch/ui/BLfLst$3;
.super Ljava/lang/Object;
.source "BLfLst.java"

# interfaces
.implements Lcn/baos/watch/sdk/interfac/moslem/OnQrImageListener;


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

    .line 821
    iput-object p1, p0, Lcn/yoozworld/watch/ui/BLfLst$3;->this$0:Lcn/yoozworld/watch/ui/BLfLst;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onQrImage$0(I)V
    .registers 3

    .line 826
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    const-string v1, "qr_set_status"

    .line 827
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onQrImage(I)V
    .registers 4

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "qrCodeFile-Success-->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst$3;->this$0:Lcn/yoozworld/watch/ui/BLfLst;

    invoke-static {v0}, Lcn/yoozworld/watch/ui/BLfLst;->-$$Nest$fgetmMainHandler(Lcn/yoozworld/watch/ui/BLfLst;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcn/yoozworld/watch/ui/BLfLst$3$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
