.class public final Lcom/amazonaws/amplify/amplify_analytics_pinpoint/AmplifyAnalyticsPinpointPlugin;
.super Ljava/lang/Object;
.source "AmplifyAnalyticsPinpointPlugin.kt"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages;


# direct methods
.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public getEndpointId(Ljava/lang/String;Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages;)V
    .locals 1
    const-string v0, "yooz_private_id"
    invoke-interface {p2, v0}, Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages;->success(Ljava/lang/Object;)V
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin;)V
    .locals 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;
    move-result-object v0
    invoke-static {v0, p0}, Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider;)V
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin;)V
    .locals 2
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;
    move-result-object v0
    const/4 v1, 0x0
    invoke-static {v0, v1}, Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider;)V
    return-void
.end method
