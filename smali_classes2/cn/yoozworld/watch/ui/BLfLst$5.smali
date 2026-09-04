.class Lcn/yoozworld/watch/ui/BLfLst$5;
.super Ljava/lang/Object;
.source "BLfLst.java"

# interfaces
.implements Lcn/baos/watch/sdk/util/ZipShareCallback;


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
    .locals 0

    .line 1070
    iput-object p1, p0, Lcn/yoozworld/watch/ui/BLfLst$5;->this$0:Lcn/yoozworld/watch/ui/BLfLst;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onShareEnd$1()V
    .locals 3

    .line 1081
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    const/4 v1, 0x1

    .line 1082
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "zipShareStatus"

    .line 1081
    invoke-virtual {v0, v2, v1}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onShareStart$0()V
    .locals 3

    .line 1074
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    const/4 v1, 0x0

    .line 1075
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "zipShareStatus"

    .line 1074
    invoke-virtual {v0, v2, v1}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onShareEnd()V
    .locals 2

    const-string v0, "\u624b\u673a\u65e5\u5fd7 \u5206\u4eab\u5b8c\u6210"

    .line 1080
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1081
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$5$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcn/yoozworld/watch/ui/BLfLst$5$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/code/MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onShareStart()V
    .locals 2

    const-string v0, "\u624b\u673a\u65e5\u5fd7 \u5f00\u59cb\u5206\u4eab"

    .line 1073
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1074
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$5$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcn/yoozworld/watch/ui/BLfLst$5$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/code/MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
