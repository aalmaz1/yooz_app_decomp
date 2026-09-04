.class public Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;
.super Ljava/lang/Object;
.source "MethodCallHandlerImpl.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# instance fields
.field private activity:Landroid/app/Activity;

.field private final applicationContext:Landroid/content/Context;

.field private final googleApiAvailabilityManager:Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->applicationContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->googleApiAvailabilityManager:Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;

    return-void
.end method

.method static synthetic lambda$onMethodCall$0(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-interface {p0, p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onMethodCall$1(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-interface {p0, p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onMethodCall$2(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-interface {p0, p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onMethodCall$3(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-interface {p0, p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onMethodCall$4(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-interface {p0, p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onMethodCall$5(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-interface {p0, p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 6

    .line 42
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "isUserResolvable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "checkPlayServicesAvailability"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "showErrorNotification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const-string v1, "showErrorDialogFragment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_4
    const-string v1, "getErrorString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_5
    const-string v1, "makeGooglePlayServicesAvailable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 89
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto/16 :goto_1

    .line 68
    :pswitch_0
    iget-object p1, p0, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->googleApiAvailabilityManager:Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;

    iget-object v0, p0, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->applicationContext:Landroid/content/Context;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$$ExternalSyntheticLambda10;

    invoke-direct {v1, p2}, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$$ExternalSyntheticLambda10;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    new-instance v2, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$$ExternalSyntheticLambda11;

    invoke-direct {v2, p2}, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$$ExternalSyntheticLambda11;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;->isUserResolvable(Landroid/content/Context;Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$isUserResolvableCallback;Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$ErrorCallback;)V

    goto/16 :goto_1

    :pswitch_1
    const-string v0, "showDialog"

    .line 44
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    .line 45
    iget-object v0, p0, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->googleApiAvailabilityManager:Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;

    iget-object v2, p0, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->applicationContext:Landroid/content/Context;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v4, p2}, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    new-instance v5, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$$ExternalSyntheticLambda5;

    invoke-direct {v5, p2}, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$$ExternalSyntheticLambda5;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual/range {v0 .. v5}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;->checkPlayServicesAvailability(Ljava/lang/Boolean;Landroid/app/Activity;Landroid/content/Context;Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$SuccessCallback;Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$ErrorCallback;)V

    goto :goto_1

    .line 75
    :pswitch_2
    iget-object p1, p0, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->googleApiAvailabilityManager:Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;

    iget-object v0, p0, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->applicationContext:Landroid/content/Context;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$$ExternalSyntheticLambda1;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    new-instance v2, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2}, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$$ExternalSyntheticLambda2;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;->showErrorNotification(Landroid/content/Context;Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$showErrorNotificationCallback;Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$ErrorCallback;)V

    goto :goto_1

    .line 82
    :pswitch_3
    iget-object p1, p0, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->googleApiAvailabilityManager:Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;

    iget-object v0, p0, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->activity:Landroid/app/Activity;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v2, p2}, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$$ExternalSyntheticLambda3;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    new-instance v3, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v3, p2}, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$$ExternalSyntheticLambda4;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;->showErrorDialogFragment(Landroid/content/Context;Landroid/app/Activity;Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$showErrorDialogFragmentCallback;Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$ErrorCallback;)V

    goto :goto_1

    .line 61
    :pswitch_4
    iget-object p1, p0, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->googleApiAvailabilityManager:Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;

    iget-object v0, p0, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->applicationContext:Landroid/content/Context;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$$ExternalSyntheticLambda8;

    invoke-direct {v1, p2}, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$$ExternalSyntheticLambda8;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    new-instance v2, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$$ExternalSyntheticLambda9;

    invoke-direct {v2, p2}, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$$ExternalSyntheticLambda9;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;->getErrorString(Landroid/content/Context;Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$getErrorStringCallback;Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$ErrorCallback;)V

    goto :goto_1

    .line 53
    :pswitch_5
    iget-object p1, p0, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->googleApiAvailabilityManager:Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;

    iget-object v0, p0, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->activity:Landroid/app/Activity;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1, p2}, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$$ExternalSyntheticLambda6;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    new-instance v2, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$$ExternalSyntheticLambda7;

    invoke-direct {v2, p2}, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$$ExternalSyntheticLambda7;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;->makeGooglePlayServicesAvailable(Landroid/app/Activity;Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$MakeGooglePlayServicesAvailableCallback;Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$ErrorCallback;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x701efc50 -> :sswitch_5
        -0x6b5e40fd -> :sswitch_4
        -0x6b0a8a5d -> :sswitch_3
        -0x299dfe6a -> :sswitch_2
        0x59426b55 -> :sswitch_1
        0x744b2068 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->activity:Landroid/app/Activity;

    return-void
.end method
