.class final Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl;
.super Ljava/lang/Object;
.source "BillingClientFactoryImpl.java"

# interfaces
.implements Lio/flutter/plugins/inapppurchase/BillingClientFactory;


# direct methods
.method public static synthetic $r8$lambda$FIX6-jIL13Zvo0mp5B6IENiLrlQ(Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl;Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;Lcom/android/billingclient/api/UserChoiceDetails;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl;->lambda$createUserChoiceBillingListener$0(Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;Lcom/android/billingclient/api/UserChoiceDetails;)V

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$createUserChoiceBillingListener$0(Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;Lcom/android/billingclient/api/UserChoiceDetails;)V
    .registers 4

    .line 51
    invoke-static {p2}, Lio/flutter/plugins/inapppurchase/Translator;->fromUserChoiceDetails(Lcom/android/billingclient/api/UserChoiceDetails;)Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceDetails;

    move-result-object p2

    new-instance v0, Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl$1;

    invoke-direct {v0, p0}, Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl$1;-><init>(Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl;)V

    .line 50
    invoke-virtual {p1, p2, v0}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;->userSelectedalternativeBilling(Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceDetails;Lio/flutter/plugins/inapppurchase/Messages$VoidResult;)V

    return-void
.end method


# virtual methods
.method public createBillingClient(Landroid/content/Context;Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingChoiceMode;)Lcom/android/billingclient/api/BillingClient;
    .registers 6

    .line 25
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 26
    sget-object v0, Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl$2;->$SwitchMap$io$flutter$plugins$inapppurchase$Messages$PlatformBillingChoiceMode:[I

    invoke-virtual {p3}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingChoiceMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_34

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3f

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown BillingChoiceMode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", Defaulting to PLAY_BILLING_ONLY"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "BillingClientFactoryImpl"

    invoke-static {v0, p3}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    .line 32
    :cond_34
    invoke-virtual {p0, p2}, Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl;->createUserChoiceBillingListener(Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;)Lcom/android/billingclient/api/UserChoiceBillingListener;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/billingclient/api/BillingClient$Builder;->enableUserChoiceBilling(Lcom/android/billingclient/api/UserChoiceBillingListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    goto :goto_3f

    .line 29
    :cond_3c
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->enableAlternativeBillingOnly()Lcom/android/billingclient/api/BillingClient$Builder;

    .line 43
    :cond_3f
    :goto_3f
    new-instance p3, Lio/flutter/plugins/inapppurchase/PluginPurchaseListener;

    invoke-direct {p3, p2}, Lio/flutter/plugins/inapppurchase/PluginPurchaseListener;-><init>(Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;)V

    invoke-virtual {p1, p3}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    return-object p1
.end method

.method createUserChoiceBillingListener(Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;)Lcom/android/billingclient/api/UserChoiceBillingListener;
    .registers 3

    .line 49
    new-instance v0, Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl;Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;)V

    return-object v0
.end method
