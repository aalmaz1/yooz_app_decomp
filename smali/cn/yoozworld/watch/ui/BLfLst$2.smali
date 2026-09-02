.class Lcn/yoozworld/watch/ui/BLfLst$2;
.super Ljava/lang/Object;
.source "BLfLst.java"

# interfaces
.implements Lcn/baos/watch/sdk/interfac/app/OnRemindListener;


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
.method public static synthetic $r8$lambda$4Bn8_IyIyAKYiEBCqE79YpkBRqk(Lcn/yoozworld/watch/ui/BLfLst$2;Lcn/baos/watch/w100/messages/Common_remind_config;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst$2;->lambda$onAppRemind$0(Lcn/baos/watch/w100/messages/Common_remind_config;)V

    return-void
.end method

.method constructor <init>(Lcn/yoozworld/watch/ui/BLfLst;)V
    .registers 2

    .line 682
    iput-object p1, p0, Lcn/yoozworld/watch/ui/BLfLst$2;->this$0:Lcn/yoozworld/watch/ui/BLfLst;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAppRemind$0(Lcn/baos/watch/w100/messages/Common_remind_config;)V
    .registers 4

    .line 689
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst$2;->this$0:Lcn/yoozworld/watch/ui/BLfLst;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 690
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "remindConfigData"

    .line 689
    invoke-virtual {v0, v1, p1}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onAppRemind(Lcn/baos/watch/w100/messages/Common_remind_config;)V
    .registers 4

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6\u63d0\u9192->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst$2;->this$0:Lcn/yoozworld/watch/ui/BLfLst;

    invoke-static {v0}, Lcn/yoozworld/watch/ui/BLfLst;->-$$Nest$fgetmMainHandler(Lcn/yoozworld/watch/ui/BLfLst;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcn/yoozworld/watch/ui/BLfLst$2$$ExternalSyntheticLambda0;-><init>(Lcn/yoozworld/watch/ui/BLfLst$2;Lcn/baos/watch/w100/messages/Common_remind_config;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
