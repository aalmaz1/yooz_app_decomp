.class Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;
.super Ljava/lang/Object;
.source "MethodCallHandlerImpl.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApi;


# static fields
.field static final ACTIVITY_UNAVAILABLE:Ljava/lang/String; = "ACTIVITY_UNAVAILABLE"

.field private static final LOAD_PRODUCT_DOC_URL:Ljava/lang/String; = "https://github.com/flutter/packages/blob/main/packages/in_app_purchase/in_app_purchase/README.md#loading-products-for-sale"

.field static final PRORATION_MODE_UNKNOWN_SUBSCRIPTION_UPGRADE_DOWNGRADE_POLICY:I = 0x0

.field static final REPLACEMENT_MODE_UNKNOWN_SUBSCRIPTION_UPGRADE_DOWNGRADE_POLICY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "InAppPurchasePlugin"


# instance fields
.field private activity:Landroid/app/Activity;

.field private final applicationContext:Landroid/content/Context;

.field private billingClient:Lcom/android/billingclient/api/BillingClient;

.field private final billingClientFactory:Lio/flutter/plugins/inapppurchase/BillingClientFactory;

.field private final cachedProducts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;"
        }
    .end annotation
.end field

.field final callbackApi:Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;


# direct methods
.method public static synthetic $r8$lambda$Z3kj_PKwRW2v4J84gL6U_x2sjyc(Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->lambda$queryProductDetailsAsync$4(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;Lio/flutter/plugins/inapppurchase/BillingClientFactory;)V
    .registers 6

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->cachedProducts:Ljava/util/HashMap;

    .line 88
    iput-object p4, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClientFactory:Lio/flutter/plugins/inapppurchase/BillingClientFactory;

    .line 89
    iput-object p2, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->applicationContext:Landroid/content/Context;

    .line 90
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->activity:Landroid/app/Activity;

    .line 91
    iput-object p3, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->callbackApi:Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;

    return-void
.end method

.method private endBillingClientConnection()V
    .registers 2

    .line 207
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_a

    .line 208
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    const/4 v0, 0x0

    .line 209
    iput-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/BillingClient;

    :cond_a
    return-void
.end method

.method private getNullBillingClientError()Lio/flutter/plugins/inapppurchase/Messages$FlutterError;
    .registers 5

    .line 533
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    const-string v1, "BillingClient is unset. Try reconnecting."

    const/4 v2, 0x0

    const-string v3, "UNAVAILABLE"

    invoke-direct {v0, v3, v1, v2}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$acknowledgePurchase$8(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/BillingResult;)V
    .registers 2

    .line 516
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Translator;->fromBillingResult(Lcom/android/billingclient/api/BillingResult;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$consumeAsync$5(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .registers 3

    .line 390
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Translator;->fromBillingResult(Lcom/android/billingclient/api/BillingResult;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$createAlternativeBillingOnlyReportingDetailsAsync$1(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetails;)V
    .registers 3

    .line 162
    invoke-static {p1, p2}, Lio/flutter/plugins/inapppurchase/Translator;->fromAlternativeBillingOnlyReportingDetails(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetails;)Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse;

    move-result-object p1

    .line 161
    invoke-interface {p0, p1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$getBillingConfigAsync$3(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V
    .registers 3

    .line 195
    invoke-static {p1, p2}, Lio/flutter/plugins/inapppurchase/Translator;->fromBillingConfig(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$isAlternativeBillingOnlyAvailableAsync$2(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/BillingResult;)V
    .registers 2

    .line 178
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Translator;->fromBillingResult(Lcom/android/billingclient/api/BillingResult;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$queryProductDetailsAsync$4(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 5

    .line 237
    invoke-virtual {p0, p3}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->updateCachedProducts(Ljava/util/List;)V

    .line 238
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse$Builder;

    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse$Builder;-><init>()V

    .line 240
    invoke-static {p2}, Lio/flutter/plugins/inapppurchase/Translator;->fromBillingResult(Lcom/android/billingclient/api/BillingResult;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    move-result-object p2

    invoke-virtual {v0, p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse$Builder;->setBillingResult(Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;)Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse$Builder;

    move-result-object p2

    .line 241
    invoke-static {p3}, Lio/flutter/plugins/inapppurchase/Translator;->fromProductDetailsList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse$Builder;->setProductDetails(Ljava/util/List;)Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse$Builder;

    move-result-object p2

    .line 242
    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse$Builder;->build()Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$queryPurchaseHistoryAsync$7(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 4

    .line 445
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse$Builder;

    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse$Builder;-><init>()V

    .line 447
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Translator;->fromBillingResult(Lcom/android/billingclient/api/BillingResult;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse$Builder;->setBillingResult(Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse$Builder;

    move-result-object p1

    .line 448
    invoke-static {p2}, Lio/flutter/plugins/inapppurchase/Translator;->fromPurchaseHistoryRecordList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse$Builder;->setPurchases(Ljava/util/List;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse$Builder;

    move-result-object p1

    .line 449
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse$Builder;->build()Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$queryPurchasesAsync$6(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 4

    .line 419
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse$Builder;

    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse$Builder;-><init>()V

    .line 421
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Translator;->fromBillingResult(Lcom/android/billingclient/api/BillingResult;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse$Builder;->setBillingResult(Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse$Builder;

    move-result-object p1

    .line 422
    invoke-static {p2}, Lio/flutter/plugins/inapppurchase/Translator;->fromPurchasesList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse$Builder;->setPurchases(Ljava/util/List;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse$Builder;

    move-result-object p1

    .line 423
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse$Builder;->build()Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$showAlternativeBillingOnlyInformationDialog$0(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/BillingResult;)V
    .registers 2

    .line 145
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Translator;->fromBillingResult(Lcom/android/billingclient/api/BillingResult;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private setReplaceProrationMode(Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;I)V
    .registers 3

    .line 377
    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->setReplaceProrationMode(I)Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    return-void
.end method


# virtual methods
.method public acknowledgePurchase(Ljava/lang/String;Lio/flutter/plugins/inapppurchase/Messages$Result;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/inapppurchase/Messages$Result<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;",
            ">;)V"
        }
    .end annotation

    .line 508
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_c

    .line 509
    invoke-direct {p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->getNullBillingClientError()Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    return-void

    .line 514
    :cond_c
    :try_start_c
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object p1

    .line 515
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1, p2}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$$ExternalSyntheticLambda6;-><init>(Lio/flutter/plugins/inapppurchase/Messages$Result;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_22} :catch_23

    goto :goto_36

    :catch_23
    move-exception p1

    .line 518
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "error"

    invoke-direct {v0, v2, v1, p1}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    :goto_36
    return-void
.end method

.method public consumeAsync(Ljava/lang/String;Lio/flutter/plugins/inapppurchase/Messages$Result;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/inapppurchase/Messages$Result<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;",
            ">;)V"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_c

    .line 384
    invoke-direct {p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->getNullBillingClientError()Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    return-void

    .line 389
    :cond_c
    :try_start_c
    new-instance v0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$$ExternalSyntheticLambda5;-><init>(Lio/flutter/plugins/inapppurchase/Messages$Result;)V

    .line 392
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p1

    .line 393
    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object p1

    .line 395
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v1, p1, v0}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_22} :catch_23

    goto :goto_36

    :catch_23
    move-exception p1

    .line 397
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "error"

    invoke-direct {v0, v2, v1, p1}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    :goto_36
    return-void
.end method

.method public createAlternativeBillingOnlyReportingDetailsAsync(Lio/flutter/plugins/inapppurchase/Messages$Result;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/inapppurchase/Messages$Result<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse;",
            ">;)V"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_c

    .line 155
    invoke-direct {p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->getNullBillingClientError()Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    return-void

    .line 159
    :cond_c
    :try_start_c
    new-instance v1, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$$ExternalSyntheticLambda3;-><init>(Lio/flutter/plugins/inapppurchase/Messages$Result;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->createAlternativeBillingOnlyReportingDetailsAsync(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_14} :catch_15

    goto :goto_28

    :catch_15
    move-exception v0

    .line 165
    new-instance v1, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "error"

    invoke-direct {v1, v3, v2, v0}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    :goto_28
    return-void
.end method

.method public endConnection()V
    .registers 1

    .line 203
    invoke-direct {p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->endBillingClientConnection()V

    return-void
.end method

.method public getBillingConfigAsync(Lio/flutter/plugins/inapppurchase/Messages$Result;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/inapppurchase/Messages$Result<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse;",
            ">;)V"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_c

    .line 188
    invoke-direct {p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->getNullBillingClientError()Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    return-void

    .line 193
    :cond_c
    :try_start_c
    invoke-static {}, Lcom/android/billingclient/api/GetBillingConfigParams;->newBuilder()Lcom/android/billingclient/api/GetBillingConfigParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/GetBillingConfigParams$Builder;->build()Lcom/android/billingclient/api/GetBillingConfigParams;

    move-result-object v1

    new-instance v2, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$$ExternalSyntheticLambda7;

    invoke-direct {v2, p1}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$$ExternalSyntheticLambda7;-><init>(Lio/flutter/plugins/inapppurchase/Messages$Result;)V

    .line 192
    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->getBillingConfigAsync(Lcom/android/billingclient/api/GetBillingConfigParams;Lcom/android/billingclient/api/BillingConfigResponseListener;)V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_1c} :catch_1d

    goto :goto_30

    :catch_1d
    move-exception v0

    .line 197
    new-instance v1, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "error"

    invoke-direct {v1, v3, v2, v0}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    :goto_30
    return-void
.end method

.method public isAlternativeBillingOnlyAvailableAsync(Lio/flutter/plugins/inapppurchase/Messages$Result;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/inapppurchase/Messages$Result<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;",
            ">;)V"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_c

    .line 173
    invoke-direct {p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->getNullBillingClientError()Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    return-void

    .line 177
    :cond_c
    :try_start_c
    new-instance v1, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$$ExternalSyntheticLambda4;-><init>(Lio/flutter/plugins/inapppurchase/Messages$Result;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->isAlternativeBillingOnlyAvailableAsync(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_14} :catch_15

    goto :goto_28

    :catch_15
    move-exception v0

    .line 180
    new-instance v1, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "error"

    invoke-direct {v1, v3, v2, v0}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    :goto_28
    return-void
.end method

.method public isFeatureSupported(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    .line 538
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_16

    .line 541
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingClient;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    .line 542
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 539
    :cond_16
    invoke-direct {p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->getNullBillingClientError()Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    move-result-object p1

    throw p1
.end method

.method public isReady()Ljava/lang/Boolean;
    .registers 2

    .line 216
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_d

    .line 219
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 217
    :cond_d
    invoke-direct {p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->getNullBillingClientError()Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    move-result-object v0

    throw v0
.end method

.method public launchBillingFlow(Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;
    .registers 10

    .line 252
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_1f1

    .line 256
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->cachedProducts:Ljava/util/HashMap;

    .line 257
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getProduct()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/ProductDetails;

    const-string v1, " are not available. It might because products were not fetched prior to the call. Please fetch the products first. An example of how to fetch the products could be found here: https://github.com/flutter/packages/blob/main/packages/in_app_purchase/in_app_purchase/README.md#loading-products-for-sale"

    const-string v2, "Details for product "

    const/4 v3, 0x0

    if-eqz v0, :cond_1d4

    .line 270
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_76

    .line 273
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    .line 274
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getOfferToken()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_21

    .line 275
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getOfferToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    const/4 v4, 0x1

    goto :goto_44

    :cond_43
    const/4 v4, 0x0

    :goto_44
    if-eqz v4, :cond_47

    goto :goto_76

    .line 281
    :cond_47
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Offer token "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getOfferToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for product "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 286
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getProduct()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not valid. Make sure to only pass offer tokens that belong to the product. To obtain offer tokens for a product, fetch the products. An example of how to fetch the products could be found here: https://github.com/flutter/packages/blob/main/packages/in_app_purchase/in_app_purchase/README.md#loading-products-for-sale"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "INVALID_OFFER_TOKEN"

    invoke-direct {v0, v1, p1, v3}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    throw v0

    .line 293
    :cond_76
    :goto_76
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getProrationMode()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_9b

    .line 294
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getReplacementMode()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-nez v4, :cond_91

    goto :goto_9b

    .line 296
    :cond_91
    new-instance p1, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    const-string v0, "IN_APP_PURCHASE_CONFLICT_PRORATION_MODE_REPLACEMENT_MODE"

    const-string v1, "launchBillingFlow failed because you provided both prorationMode and replacementMode. You can only provide one of them."

    invoke-direct {p1, v0, v1, v3}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    throw p1

    .line 302
    :cond_9b
    :goto_9b
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getOldProduct()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c4

    .line 303
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getProrationMode()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-nez v4, :cond_ba

    .line 305
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getReplacementMode()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-nez v4, :cond_ba

    goto :goto_c4

    .line 307
    :cond_ba
    new-instance p1, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    const-string v0, "IN_APP_PURCHASE_REQUIRE_OLD_PRODUCT"

    const-string v1, "launchBillingFlow failed because oldProduct is null. You must provide a valid oldProduct in order to use a proration mode."

    invoke-direct {p1, v0, v1, v3}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    throw p1

    .line 311
    :cond_c4
    :goto_c4
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getOldProduct()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f4

    iget-object v4, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->cachedProducts:Ljava/util/HashMap;

    .line 312
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getOldProduct()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d7

    goto :goto_f4

    .line 313
    :cond_d7
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getOldProduct()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "IN_APP_PURCHASE_INVALID_OLD_PRODUCT"

    invoke-direct {v0, v1, p1, v3}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    throw v0

    .line 322
    :cond_f4
    :goto_f4
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_1b5

    .line 332
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v1

    .line 333
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    .line 334
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getOfferToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10c

    .line 335
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getOfferToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    .line 338
    :cond_10c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 339
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    .line 343
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getAccountId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_137

    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_137

    .line 344
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 346
    :cond_137
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getObfuscatedProfileId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14e

    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getObfuscatedProfileId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14e

    .line 347
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getObfuscatedProfileId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedProfileId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 350
    :cond_14e
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    move-result-object v1

    .line 351
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getOldProduct()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a4

    .line 352
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getOldProduct()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a4

    .line 353
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a4

    .line 354
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->setOldPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    .line 355
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getProrationMode()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_186

    .line 358
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getProrationMode()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    .line 357
    invoke-direct {p0, v1, v2}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->setReplaceProrationMode(Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;I)V

    .line 360
    :cond_186
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getReplacementMode()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_19d

    .line 363
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getReplacementMode()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    .line 362
    invoke-virtual {v1, p1}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->setSubscriptionReplacementMode(I)Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    .line 365
    :cond_19d
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSubscriptionUpdateParams(Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 367
    :cond_1a4
    iget-object p1, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/BillingClient;

    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Translator;->fromBillingResult(Lcom/android/billingclient/api/BillingResult;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    move-result-object p1

    return-object p1

    .line 323
    :cond_1b5
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getProduct()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " are not available. This method must be run with the app in foreground."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ACTIVITY_UNAVAILABLE"

    invoke-direct {v0, v1, p1, v3}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    throw v0

    .line 259
    :cond_1d4
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getProduct()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NOT_FOUND"

    invoke-direct {v0, v1, p1, v3}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    throw v0

    .line 253
    :cond_1f1
    invoke-direct {p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->getNullBillingClientError()Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    move-result-object p1

    throw p1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    .line 119
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->activity:Landroid/app/Activity;

    if-ne v0, p1, :cond_10

    iget-object p1, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->applicationContext:Landroid/content/Context;

    if-eqz p1, :cond_10

    .line 120
    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 121
    invoke-direct {p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->endBillingClientConnection()V

    :cond_10
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method onDetachedFromActivity()V
    .registers 1

    .line 129
    invoke-direct {p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->endBillingClientConnection()V

    return-void
.end method

.method public queryProductDetailsAsync(Ljava/util/List;Lio/flutter/plugins/inapppurchase/Messages$Result;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;",
            ">;",
            "Lio/flutter/plugins/inapppurchase/Messages$Result<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse;",
            ">;)V"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_c

    .line 227
    invoke-direct {p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->getNullBillingClientError()Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    return-void

    .line 233
    :cond_c
    :try_start_c
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v0

    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Translator;->toProductList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object p1

    .line 234
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$$ExternalSyntheticLambda1;-><init>(Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;Lio/flutter/plugins/inapppurchase/Messages$Result;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_26} :catch_27

    goto :goto_3a

    :catch_27
    move-exception p1

    .line 245
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "error"

    invoke-direct {v0, v2, v1, p1}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    :goto_3a
    return-void
.end method

.method public queryPurchaseHistoryAsync(Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;Lio/flutter/plugins/inapppurchase/Messages$Result;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;",
            "Lio/flutter/plugins/inapppurchase/Messages$Result<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse;",
            ">;)V"
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_c

    .line 435
    invoke-direct {p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->getNullBillingClientError()Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    return-void

    .line 441
    :cond_c
    :try_start_c
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchaseHistoryParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;

    move-result-object v1

    .line 442
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Translator;->toProductTypeString(Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;

    move-result-object p1

    .line 443
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchaseHistoryParams;

    move-result-object p1

    new-instance v1, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$$ExternalSyntheticLambda8;

    invoke-direct {v1, p2}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$$ExternalSyntheticLambda8;-><init>(Lio/flutter/plugins/inapppurchase/Messages$Result;)V

    .line 440
    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->queryPurchaseHistoryAsync(Lcom/android/billingclient/api/QueryPurchaseHistoryParams;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_24} :catch_25

    goto :goto_38

    :catch_25
    move-exception p1

    .line 452
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "error"

    invoke-direct {v0, v2, v1, p1}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    :goto_38
    return-void
.end method

.method public queryPurchasesAsync(Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;Lio/flutter/plugins/inapppurchase/Messages$Result;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;",
            "Lio/flutter/plugins/inapppurchase/Messages$Result<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse;",
            ">;)V"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_c

    .line 406
    invoke-direct {p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->getNullBillingClientError()Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    return-void

    .line 414
    :cond_c
    :try_start_c
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v0

    .line 415
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Translator;->toProductTypeString(Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    .line 416
    iget-object p1, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 417
    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v0

    new-instance v1, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugins/inapppurchase/Messages$Result;)V

    .line 416
    invoke-virtual {p1, v0, v1}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_25} :catch_26

    goto :goto_39

    :catch_26
    move-exception p1

    .line 426
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "error"

    invoke-direct {v0, v2, v1, p1}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    :goto_39
    return-void
.end method

.method setActivity(Landroid/app/Activity;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->activity:Landroid/app/Activity;

    return-void
.end method

.method public showAlternativeBillingOnlyInformationDialog(Lio/flutter/plugins/inapppurchase/Messages$Result;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/inapppurchase/Messages$Result<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;",
            ">;)V"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_c

    .line 136
    invoke-direct {p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->getNullBillingClientError()Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    return-void

    .line 139
    :cond_c
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->activity:Landroid/app/Activity;

    if-nez v1, :cond_1e

    .line 140
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    const-string v1, "Not attempting to show dialog"

    const/4 v2, 0x0

    const-string v3, "ACTIVITY_UNAVAILABLE"

    invoke-direct {v0, v3, v1, v2}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    return-void

    .line 144
    :cond_1e
    :try_start_1e
    new-instance v2, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$$ExternalSyntheticLambda2;-><init>(Lio/flutter/plugins/inapppurchase/Messages$Result;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->showAlternativeBillingOnlyInformationDialog(Landroid/app/Activity;Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;)Lcom/android/billingclient/api/BillingResult;
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_26} :catch_27

    goto :goto_3a

    :catch_27
    move-exception v0

    .line 147
    new-instance v1, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "error"

    invoke-direct {v1, v3, v2, v0}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    :goto_3a
    return-void
.end method

.method public startConnection(Ljava/lang/Long;Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingChoiceMode;Lio/flutter/plugins/inapppurchase/Messages$Result;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingChoiceMode;",
            "Lio/flutter/plugins/inapppurchase/Messages$Result<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;",
            ">;)V"
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_10

    .line 462
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClientFactory:Lio/flutter/plugins/inapppurchase/BillingClientFactory;

    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->callbackApi:Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;

    .line 463
    invoke-interface {v0, v1, v2, p2}, Lio/flutter/plugins/inapppurchase/BillingClientFactory;->createBillingClient(Landroid/content/Context;Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingChoiceMode;)Lcom/android/billingclient/api/BillingClient;

    move-result-object p2

    iput-object p2, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 467
    :cond_10
    :try_start_10
    iget-object p2, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$1;

    invoke-direct {v0, p0, p3, p1}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$1;-><init>(Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;Lio/flutter/plugins/inapppurchase/Messages$Result;Ljava/lang/Long;)V

    invoke-virtual {p2, v0}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_1a} :catch_1b

    goto :goto_2e

    :catch_1b
    move-exception p1

    .line 501
    new-instance p2, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "error"

    invoke-direct {p2, v1, v0, p1}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p3, p2}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    :goto_2e
    return-void
.end method

.method protected updateCachedProducts(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 527
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/ProductDetails;

    .line 528
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->cachedProducts:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_1d
    return-void
.end method
