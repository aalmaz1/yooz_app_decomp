.class public Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;
.super Ljava/lang/Object;
.source "AmplifyAuthCognitoPlugin.kt"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
.implements Lio/flutter/plugin/common/PluginRegistry;
.implements Lio/flutter/plugin/common/PluginRegistry;
.implements Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge;


# direct methods
.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public clearLegacyCredentials(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;
    move-result-object v0
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    return-void
.end method

.method public deleteLegacyDeviceSecrets(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;
    move-result-object v0
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    return-void
.end method

.method public fetchLegacyDeviceSecrets(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    const/4 v1, 0x0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result;
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;
    move-result-object v0
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    return-void
.end method

.method public getBundleId()Ljava/lang/String;
    .locals 1
    const-string v0, "cn.yoozworld.watch.private"
    return-object v0
.end method

.method public getContextData()Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;
    .locals 11
    new-instance v10, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;
    const-string v1, "yooz_private_device"
    const-string v2, "yooz_private_id"
    const-string v3, "yooz_private_fingerprint"
    const-string v4, "YOOZ"
    const-string v5, "1.2.0"
    const-string v6, "en-US"
    const-string v7, "14"
    const-wide/16 v8, 0x0
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v8
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v9
    move-object v0, v10
    invoke-direct/range {v0 .. v9}, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    return-object v10
.end method

.method public getLegacyCredentials(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    const/4 v0, 0x0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result;
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;
    move-result-object v0
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    return-void
.end method

.method public getValidationData()Ljava/util/Map;
    .locals 1
    new-instance v0, Ljava/util/LinkedHashMap;
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
    return-object v0
.end method

.method public launchUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin;)V
    .locals 2
    sget-object v0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge;->Companion:Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge;
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;
    move-result-object v1
    invoke-virtual {v0, v1, p0}, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge$Companion;->setUp(Lio/flutter/plugin/common/BinaryMessenger;Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge;)V
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 0
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin;)V
    .locals 3
    sget-object v0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge;->Companion:Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge;
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;
    move-result-object v1
    const/4 v2, 0x0
    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge$Companion;->setUp(Lio/flutter/plugin/common/BinaryMessenger;Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge;)V
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0
    return-void
.end method

.method public signInWithUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    const/4 v0, 0x0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result;
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;
    move-result-object v0
    invoke-interface {p5, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    return-void
.end method

.method public signOutWithUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result;
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;
    move-result-object v0
    invoke-interface {p5, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    return-void
.end method
