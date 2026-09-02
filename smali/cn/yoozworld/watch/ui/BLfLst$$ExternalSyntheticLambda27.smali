.class public final synthetic Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/flutter/plugin/common/MethodChannel$Result;

.field public final synthetic f$1:Lcn/baos/watch/sdk/entitiy/AppMarekEntity;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;Lcn/baos/watch/sdk/entitiy/AppMarekEntity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda27;->f$0:Lio/flutter/plugin/common/MethodChannel$Result;

    iput-object p2, p0, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda27;->f$1:Lcn/baos/watch/sdk/entitiy/AppMarekEntity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda27;->f$0:Lio/flutter/plugin/common/MethodChannel$Result;

    iget-object v1, p0, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda27;->f$1:Lcn/baos/watch/sdk/entitiy/AppMarekEntity;

    invoke-static {v0, v1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$3(Lio/flutter/plugin/common/MethodChannel$Result;Lcn/baos/watch/sdk/entitiy/AppMarekEntity;)V

    return-void
.end method
