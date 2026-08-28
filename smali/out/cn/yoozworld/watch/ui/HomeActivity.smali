.class public Lcn/yoozworld/watch/ui/HomeActivity;
.super Lio/flutter/embedding/android/FlutterActivity;
.source "HomeActivity.java"


# static fields
.field public static activity:Lcn/yoozworld/watch/ui/HomeActivity; = null

.field public static isBackGround:Z = false

.field public static isShowMap:Z = false


# instance fields
.field googleSignInOptions:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

.field jsonMessageChannel:Lio/flutter/plugin/common/BasicMessageChannel;

.field mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

.field private mHuabaoImpl:Lcn/baos/watch/sdk/code/HuabaoImpl;

.field methodChannel:Lio/flutter/plugin/common/MethodChannel;

.field scan:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$3jdqRT9jzpT8VFBDr55uVBjAKEw(Lcn/yoozworld/watch/ui/HomeActivity;)V
    .registers 1

    invoke-direct {p0}, Lcn/yoozworld/watch/ui/HomeActivity;->lambda$onActivityResult$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ib9xb975NgNPHmKwA6Vmx3ldwJE(Lcn/yoozworld/watch/ui/HomeActivity;Ljava/lang/String;Lcn/baos/watch/sdk/entitiy/QrEntity;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcn/yoozworld/watch/ui/HomeActivity;->lambda$onActivityResult$12(Ljava/lang/String;Lcn/baos/watch/sdk/entitiy/QrEntity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TTLIX-qXFHxmDq9j__zx58bNoq8(Lcn/yoozworld/watch/ui/HomeActivity;Landroid/graphics/Bitmap;Lcn/baos/watch/sdk/entitiy/QrEntity;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcn/yoozworld/watch/ui/HomeActivity;->lambda$onActivityResult$14(Landroid/graphics/Bitmap;Lcn/baos/watch/sdk/entitiy/QrEntity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VZh8m2f7MXTUIWPGctAquyIJdEQ(Lcn/yoozworld/watch/ui/HomeActivity;)V
    .registers 1

    invoke-direct {p0}, Lcn/yoozworld/watch/ui/HomeActivity;->lambda$onCreate$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$noYXIlsno0YQQmqSXSr7L4xSJuA(Lcn/yoozworld/watch/ui/HomeActivity;Ljava/lang/String;Lcn/baos/watch/sdk/entitiy/QrEntity;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcn/yoozworld/watch/ui/HomeActivity;->lambda$onActivityResult$13(Ljava/lang/String;Lcn/baos/watch/sdk/entitiy/QrEntity;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivity;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcn/yoozworld/watch/ui/HomeActivity;->googleSignInOptions:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 82
    iput-object v0, p0, Lcn/yoozworld/watch/ui/HomeActivity;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    const-string v0, ""

    .line 440
    iput-object v0, p0, Lcn/yoozworld/watch/ui/HomeActivity;->scan:Ljava/lang/String;

    return-void
.end method

.method private asyncThread(Ljava/lang/Runnable;)V
    .registers 3

    .line 544
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getInstance()Lcn/yoozworld/watch/ui/HomeActivity;
    .registers 1

    .line 78
    sget-object v0, Lcn/yoozworld/watch/ui/HomeActivity;->activity:Lcn/yoozworld/watch/ui/HomeActivity;

    return-object v0
.end method

.method static synthetic lambda$configureFlutterEngine$3(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 4

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MainActivity \u6e90\u751fandroid \u4e3b\u9875\u9762\u52a0\u8f7d configureFlutterEngine call.method:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->switchFlutterData(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method static synthetic lambda$configureFlutterEngine$4(Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 4

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "og.Received message ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string p0, "Reply from Android"

    .line 197
    invoke-interface {p1, p0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onActivityResult$10(Lcn/baos/watch/sdk/entitiy/QrEntity;)V
    .registers 3

    .line 487
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 488
    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "qr_image"

    .line 487
    invoke-virtual {v0, v1, p0}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onActivityResult$11(Ljava/io/File;Lcn/baos/watch/sdk/entitiy/QrEntity;Ljava/lang/String;)V
    .registers 5

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new path:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/king/camera/scan/util/LogUtils;->e(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcn/baos/watch/sdk/entitiy/QrEntity;->maxImg:Ljava/lang/String;

    .line 485
    iput-object p2, p1, Lcn/baos/watch/sdk/entitiy/QrEntity;->url:Ljava/lang/String;

    .line 486
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object p0

    new-instance p2, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda2;-><init>(Lcn/baos/watch/sdk/entitiy/QrEntity;)V

    .line 487
    invoke-virtual {p0, p2}, Lcn/baos/watch/sdk/code/MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onActivityResult$12(Ljava/lang/String;Lcn/baos/watch/sdk/entitiy/QrEntity;)V
    .registers 9

    const/16 v0, 0xab

    .line 478
    invoke-static {p1, v0}, Lcom/king/zxing/util/CodeUtils;->createQRCode(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "imgCropper"

    .line 479
    invoke-static {p0, v1}, Lcn/baos/watch/sdk/util/FileUtils;->getDirAndCreate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 480
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "imgCropperMax"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/baos/watch/sdk/util/FileUtils;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 482
    new-instance v0, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, v2, p2, p1}, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda3;-><init>(Ljava/io/File;Lcn/baos/watch/sdk/entitiy/QrEntity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/yoozworld/watch/ui/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onActivityResult$13(Ljava/lang/String;Lcn/baos/watch/sdk/entitiy/QrEntity;)V
    .registers 5

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/king/camera/scan/util/LogUtils;->d(Ljava/lang/String;)V

    .line 477
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1, p2}, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda14;-><init>(Lcn/yoozworld/watch/ui/HomeActivity;Ljava/lang/String;Lcn/baos/watch/sdk/entitiy/QrEntity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 490
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private synthetic lambda$onActivityResult$14(Landroid/graphics/Bitmap;Lcn/baos/watch/sdk/entitiy/QrEntity;)V
    .registers 4

    .line 467
    invoke-static {p1}, Lcom/king/zxing/util/CodeUtils;->parseCode(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    .line 468
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_1c

    .line 475
    :cond_13
    new-instance v0, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1, p2}, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda13;-><init>(Lcn/yoozworld/watch/ui/HomeActivity;Ljava/lang/String;Lcn/baos/watch/sdk/entitiy/QrEntity;)V

    invoke-virtual {p0, v0}, Lcn/yoozworld/watch/ui/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1c
    :goto_1c
    const-string p1, ""

    .line 469
    iput-object p1, p2, Lcn/baos/watch/sdk/entitiy/QrEntity;->url:Ljava/lang/String;

    .line 470
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object p1

    new-instance v0, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda12;

    invoke-direct {v0, p2}, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda12;-><init>(Lcn/baos/watch/sdk/entitiy/QrEntity;)V

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/code/MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$onActivityResult$15(Landroid/content/Intent;)V
    .registers 4

    const-string v0, "\u6d4b\u8bd5account.email: "

    .line 503
    :try_start_2
    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getSignedInAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 504
    const-class v1, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 521
    new-instance v0, Lcn/yoozworld/watch/utils/GoogleBean;

    invoke-direct {v0}, Lcn/yoozworld/watch/utils/GoogleBean;-><init>()V

    .line 522
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcn/yoozworld/watch/utils/GoogleBean;->email:Ljava/lang/String;

    .line 524
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object p0

    const-string v1, "google"

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 526
    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 524
    invoke-virtual {p0, v1, v0}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethodEventByJSONRes(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_94} :catch_95

    goto :goto_99

    :catch_95
    move-exception p0

    .line 528
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_99
    return-void
.end method

.method private synthetic lambda$onActivityResult$8()V
    .registers 4

    .line 457
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    const-string v1, "scan_data"

    iget-object v2, p0, Lcn/yoozworld/watch/ui/HomeActivity;->scan:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onActivityResult$9(Lcn/baos/watch/sdk/entitiy/QrEntity;)V
    .registers 3

    .line 470
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 471
    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "qr_image"

    .line 470
    invoke-virtual {v0, v1, p0}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onBackPressed$7()V
    .registers 2

    .line 428
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    const-string v1, "onBackPressed"

    .line 429
    invoke-virtual {v0, v1, v1}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .registers 2

    .line 93
    new-instance v0, Lcn/yoozworld/watch/ui/ProcessAndroidCrashLogThread;

    invoke-direct {v0, p0}, Lcn/yoozworld/watch/ui/ProcessAndroidCrashLogThread;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/yoozworld/watch/ui/ProcessAndroidCrashLogThread;->start()V

    return-void
.end method

.method static synthetic lambda$onCreate$1()V
    .registers 8

    .line 120
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 121
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 122
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 123
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-----detestart"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    div-long/2addr v6, v4

    long-to-int v0, v6

    const v3, 0x15180

    add-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->queryGpsModeInInterval(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "---sendSportStracelist>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_86

    const/4 v0, 0x1

    .line 129
    sput-boolean v0, Lcn/yoozworld/watch/ui/HomeActivity;->isShowMap:Z

    :cond_86
    return-void
.end method

.method static synthetic lambda$onNewIntent$2(I)V
    .registers 3

    .line 165
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    const-string v1, "sport_status_change"

    .line 166
    invoke-virtual {v0, v1, p0}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethodEventByJSON(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$onRequestPermissionsResult$6(Ljava/util/List;)V
    .registers 3

    .line 406
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 407
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_12

    :cond_10
    const-string p0, ""

    .line 409
    :goto_12
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    const-string v1, "getPhoneContacts"

    invoke-virtual {v0, v1, p0}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onResume$5()V
    .registers 1

    .line 236
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->startReConnect()Z

    return-void
.end method

.method private startScreenBroadcastReceiver()V
    .registers 3

    .line 433
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 434
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 435
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 436
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 437
    new-instance v1, Lcn/baos/watch/sdk/manager/notification/ScreenBroadcastReceiver;

    invoke-direct {v1}, Lcn/baos/watch/sdk/manager/notification/ScreenBroadcastReceiver;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcn/yoozworld/watch/ui/HomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public checkPermissions(Ljava/lang/String;)Z
    .registers 6

    .line 205
    invoke-virtual {p0}, Lcn/yoozworld/watch/ui/HomeActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1e

    .line 206
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 207
    invoke-virtual {p0}, Lcn/yoozworld/watch/ui/HomeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-static {p0, p1, v0, v1, v3}, Landroidx/core/content/PermissionChecker;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1e

    return v2

    .line 211
    :cond_1e
    invoke-virtual {p0, p1}, Lcn/yoozworld/watch/ui/HomeActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    :goto_26
    return v2
.end method

.method public configureFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V
    .registers 5

    .line 182
    invoke-super {p0, p1}, Lio/flutter/embedding/android/FlutterActivity;->configureFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V

    .line 183
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object v1

    invoke-virtual {v1}, Lio/flutter/embedding/engine/dart/DartExecutor;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v1

    const-string v2, "com.baos.sdk/channel"

    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/yoozworld/watch/ui/HomeActivity;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 184
    new-instance v1, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda15;-><init>()V

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    const-string v0, "MainActivity \u6e90\u751fandroid \u4e3b\u9875\u9762\u52a0\u8f7d configureFlutterEngine"

    .line 189
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 191
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    .line 192
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object p1

    invoke-virtual {p1}, Lio/flutter/embedding/engine/dart/DartExecutor;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    const-string v1, "com.baos.sdk/messages"

    sget-object v2, Lio/flutter/plugin/common/JSONMessageCodec;->INSTANCE:Lio/flutter/plugin/common/JSONMessageCodec;

    invoke-direct {v0, p1, v1, v2}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    iput-object v0, p0, Lcn/yoozworld/watch/ui/HomeActivity;->jsonMessageChannel:Lio/flutter/plugin/common/BasicMessageChannel;

    .line 195
    new-instance p1, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 199
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object p1

    iget-object v0, p0, Lcn/yoozworld/watch/ui/HomeActivity;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1, v0}, Lcn/yoozworld/watch/ui/BLfLst;->setMethodChannel(Lio/flutter/plugin/common/MethodChannel;)V

    .line 200
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object p1

    iget-object v0, p0, Lcn/yoozworld/watch/ui/HomeActivity;->jsonMessageChannel:Lio/flutter/plugin/common/BasicMessageChannel;

    invoke-virtual {p1, v0}, Lcn/yoozworld/watch/ui/BLfLst;->setJsonMessageChannel(Lio/flutter/plugin/common/BasicMessageChannel;)V

    return-void
.end method

.method public getHuabaoImpl()Lcn/baos/watch/sdk/code/HuabaoImpl;
    .registers 2

    .line 421
    iget-object v0, p0, Lcn/yoozworld/watch/ui/HomeActivity;->mHuabaoImpl:Lcn/baos/watch/sdk/code/HuabaoImpl;

    return-object v0
.end method

.method public googleLogin()V
    .registers 4

    .line 548
    iget-object v0, p0, Lcn/yoozworld/watch/ui/HomeActivity;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object v0

    .line 549
    sget-object v1, Lcn/yoozworld/watch/ui/HomeActivity;->activity:Lcn/yoozworld/watch/ui/HomeActivity;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Lcn/yoozworld/watch/ui/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .line 444
    invoke-super {p0, p1, p2, p3}, Lio/flutter/embedding/android/FlutterActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "onActivityResult"

    .line 445
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, ""

    .line 446
    iput-object v0, p0, Lcn/yoozworld/watch/ui/HomeActivity;->scan:Ljava/lang/String;

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult requestCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2c

    const/4 v2, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    const/16 v0, 0xc

    if-ne p1, v0, :cond_64

    if-ne p2, v1, :cond_58

    if-eqz p3, :cond_58

    .line 452
    invoke-static {p3}, Lcom/king/camera/scan/CameraScan;->parseScanResult(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u626b\u63cf\u7ed3\u679c\u4e3a\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 454
    iput-object p2, p0, Lcn/yoozworld/watch/ui/HomeActivity;->scan:Ljava/lang/String;

    .line 457
    :cond_58
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object p2

    new-instance v0, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda7;-><init>(Lcn/yoozworld/watch/ui/HomeActivity;)V

    invoke-virtual {p2, v0}, Lcn/baos/watch/sdk/code/MainHandler;->post(Ljava/lang/Runnable;)Z

    :cond_64
    const/16 p2, 0x64

    if-ne p1, p2, :cond_89

    .line 461
    :try_start_68
    invoke-virtual {p0}, Lcn/yoozworld/watch/ui/HomeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_77

    return-void

    .line 465
    :cond_77
    new-instance v0, Lcn/baos/watch/sdk/entitiy/QrEntity;

    invoke-direct {v0}, Lcn/baos/watch/sdk/entitiy/QrEntity;-><init>()V

    .line 466
    new-instance v1, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p2, v0}, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda8;-><init>(Lcn/yoozworld/watch/ui/HomeActivity;Landroid/graphics/Bitmap;Lcn/baos/watch/sdk/entitiy/QrEntity;)V

    invoke-direct {p0, v1}, Lcn/yoozworld/watch/ui/HomeActivity;->asyncThread(Ljava/lang/Runnable;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_84} :catch_85

    goto :goto_89

    :catch_85
    move-exception p2

    .line 494
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_89
    :goto_89
    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_9f

    .line 500
    :try_start_8d
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda9;

    invoke-direct {p2, p3}, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda9;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_9a} :catch_9b

    goto :goto_9f

    :catch_9b
    move-exception p1

    .line 532
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9f
    :goto_9f
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    const-string v0, "onBackPressed"

    .line 426
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 427
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/code/MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 87
    invoke-super {p0, p1}, Lio/flutter/embedding/android/FlutterActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-static {}, Lcn/baos/watch/sdk/manager/gps/GpsManager;->getInstance()Lcn/baos/watch/sdk/manager/gps/GpsManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/baos/watch/sdk/manager/gps/GpsManager;->setContext(Landroid/content/Context;)V

    .line 89
    invoke-static {}, Lcn/yoozworld/watch/utils/GnssManager;->getInstance()Lcn/yoozworld/watch/utils/GnssManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/yoozworld/watch/utils/GnssManager;->setContext(Landroid/content/Context;)V

    .line 90
    invoke-direct {p0}, Lcn/yoozworld/watch/ui/HomeActivity;->startScreenBroadcastReceiver()V

    new-instance p1, Lcn/baos/watch/sdk/util/LogcatThread;

    invoke-direct {p1, p0}, Lcn/baos/watch/sdk/util/LogcatThread;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {p1}, Lcn/baos/watch/sdk/util/LogcatThread;->startThread()V

    .line 97
    invoke-static {p0}, Lcn/yoozworld/watch/utils/WorldUtils;->getWorldTime(Landroid/content/Context;)Ljava/lang/String;

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "App: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\nVersion Name: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\nAndroid Version: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-virtual {p0}, Lcn/yoozworld/watch/ui/HomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 107
    :try_start_60
    invoke-virtual {p0}, Lcn/yoozworld/watch/ui/HomeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 108
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_6a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_60 .. :try_end_6a} :catch_6b

    goto :goto_6f

    :catch_6b
    move-exception v0

    .line 110
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 112
    :goto_6f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "--app-version-info-"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--sdk-version-info-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcn/baos/watch/sdk/BasSdk;->logSdkVersion()V

    .line 117
    invoke-static {p0}, Lcn/baos/watch/sdk/util/JsonUtils;->readDeviceJson(Landroid/content/Context;)V

    .line 119
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object p1

    new-instance v0, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda6;-><init>()V

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcn/baos/watch/sdk/code/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    .line 132
    sput-boolean p1, Lcn/yoozworld/watch/ui/HomeActivity;->isBackGround:Z

    .line 134
    new-instance p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {p1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 136
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    iput-object p1, p0, Lcn/yoozworld/watch/ui/HomeActivity;->googleSignInOptions:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 138
    sget-object v0, Lcn/yoozworld/watch/ui/HomeActivity;->activity:Lcn/yoozworld/watch/ui/HomeActivity;

    invoke-static {v0, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p1

    iput-object p1, p0, Lcn/yoozworld/watch/ui/HomeActivity;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 141
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object p1

    sget-object v0, Lcn/yoozworld/watch/ui/HomeActivity;->activity:Lcn/yoozworld/watch/ui/HomeActivity;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_de

    .line 143
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object p1

    sget-object v0, Lcn/yoozworld/watch/ui/HomeActivity;->activity:Lcn/yoozworld/watch/ui/HomeActivity;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->makeGooglePlayServicesAvailable(Landroid/app/Activity;)Lcom/google/android/gms/tasks/Task;

    const-string p1, "google -- \u767b\u5f55\u4e0d\u53ef\u4f7f\u7528(\u8bf7\u5b89\u88c5Google Play Services\u6216\u8005\u66f4\u65b0Google Play Services\u7248\u672c)"

    .line 144
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_e3

    :cond_de
    const-string p1, "google -- \u767b\u5f55\u53ef\u4f7f\u7528"

    .line 146
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    :goto_e3
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    const-string v0, "\u82b1\u8c79app MainActivity onDestroy\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01"

    .line 216
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    sget-object v1, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_MTU_SETTING:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/baos/watch/sdk/base/AppDataConfig;->put(Ljava/lang/String;Z)V

    .line 218
    new-instance v0, Lcn/baos/watch/sdk/util/LogcatThread;

    invoke-direct {v0, p0}, Lcn/baos/watch/sdk/util/LogcatThread;-><init>(Landroid/content/Context;)V

    .line 219
    invoke-virtual {v0}, Lcn/baos/watch/sdk/util/LogcatThread;->endThread()V

    const-string v0, "\u82b1\u8c79app\u88ab\u6740\u6b7b\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01"

    .line 220
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 222
    invoke-super {p0}, Lio/flutter/embedding/android/FlutterActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 6

    .line 152
    invoke-super {p0, p1}, Lio/flutter/embedding/android/FlutterActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 153
    invoke-virtual {p0, p1}, Lcn/yoozworld/watch/ui/HomeActivity;->setIntent(Landroid/content/Intent;)V

    .line 155
    invoke-virtual {p0}, Lcn/yoozworld/watch/ui/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "loginResult"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6d77\u5916\u767b\u5f55\u8df3\u8f6c\u5230\u4e3b\u9875\u9762 MainActivity intent:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_43

    .line 157
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MainActivity \u6d77\u5916\u767b\u5f55\u767b\u9646\u7ed3\u679c\u53d1\u9001\u7ed9flutter:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethodEventByJSON(Ljava/lang/String;)V

    .line 161
    :cond_43
    invoke-virtual {p0}, Lcn/yoozworld/watch/ui/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_74

    .line 162
    invoke-virtual {p0}, Lcn/yoozworld/watch/ui/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "sportKcalStatu"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--sportKcalStatu--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1}, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda11;-><init>(I)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcn/baos/watch/sdk/code/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_74
    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 539
    invoke-super {p0}, Lio/flutter/embedding/android/FlutterActivity;->onPause()V

    const/4 v0, 0x0

    .line 540
    sput-boolean v0, Lcn/yoozworld/watch/ui/HomeActivity;->isBackGround:Z

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 8

    .line 384
    invoke-super {p0, p1, p2, p3}, Lio/flutter/embedding/android/FlutterActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 386
    :goto_16
    array-length v0, p2

    if-ge p1, v0, :cond_8f

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6743\u9650\u56de\u8c03: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, p2, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, p3, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 388
    aget-object v0, p2, p1

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "get write permission"

    const-string v2, "refuse write permission"

    if-eqz v0, :cond_52

    .line 389
    aget v0, p3, p1

    if-nez v0, :cond_4f

    .line 390
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_52

    .line 392
    :cond_4f
    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 395
    :cond_52
    :goto_52
    aget-object v0, p2, p1

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 396
    aget v0, p3, p1

    if-nez v0, :cond_67

    .line 397
    invoke-static {}, Lcn/yoozworld/watch/utils/GnssManager;->getInstance()Lcn/yoozworld/watch/utils/GnssManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/yoozworld/watch/utils/GnssManager;->startListenSatellites()V

    .line 400
    :cond_67
    aget-object v0, p2, p1

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 401
    aget v0, p3, p1

    if-nez v0, :cond_89

    .line 402
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 403
    invoke-static {p0}, Lcn/baos/watch/sdk/util/ContactUtils;->getAllContacts(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 404
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v1

    new-instance v2, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcn/baos/watch/sdk/code/MainHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8c

    .line 414
    :cond_89
    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_8c
    :goto_8c
    add-int/lit8 p1, p1, 0x1

    goto :goto_16

    :cond_8f
    return-void
.end method

.method protected onResume()V
    .registers 5

    const-string v0, "\u540e\u53f0\u5207\u5230\u524d\u53f0"

    .line 233
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "----app-start-onResume"

    .line 234
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcn/yoozworld/watch/ui/HomeActivity$$ExternalSyntheticLambda4;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcn/baos/watch/sdk/code/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    invoke-super {p0}, Lio/flutter/embedding/android/FlutterActivity;->onResume()V

    const/4 v0, 0x1

    .line 239
    sput-boolean v0, Lcn/yoozworld/watch/ui/HomeActivity;->isBackGround:Z

    .line 240
    invoke-static {}, Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;->getInstance()Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;->requestRebindNotificationService(Landroid/content/Context;)Z

    return-void
.end method

.method protected onStop()V
    .registers 2

    const-string v0, "\u524d\u53f0\u5230\u540e\u53f0"

    .line 227
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 228
    invoke-super {p0}, Lio/flutter/embedding/android/FlutterActivity;->onStop()V

    return-void
.end method

.method public provideFlutterEngine(Landroid/content/Context;)Lio/flutter/embedding/engine/FlutterEngine;
    .registers 3

    .line 171
    sput-object p0, Lcn/yoozworld/watch/ui/HomeActivity;->activity:Lcn/yoozworld/watch/ui/HomeActivity;

    const-string p1, "MainActivity \u6e90\u751fandroid \u4e3b\u9875\u9762\u52a0\u8f7d start"

    .line 172
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "MainActivity \u8fdb\u7a0b "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " Thread: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " name "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 174
    sget-object p1, Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;->SDK_HUABAO:Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;

    invoke-static {p1}, Lcn/baos/watch/sdk/code/HuabaoSdkFactory;->createMessage(Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;)Lcn/baos/watch/sdk/code/bleSdkWrapper/BleSdkWrapper;

    move-result-object p1

    check-cast p1, Lcn/baos/watch/sdk/code/HuabaoImpl;

    iput-object p1, p0, Lcn/yoozworld/watch/ui/HomeActivity;->mHuabaoImpl:Lcn/baos/watch/sdk/code/HuabaoImpl;

    .line 175
    invoke-virtual {p1, p0}, Lcn/baos/watch/sdk/code/HuabaoImpl;->init(Landroid/content/Context;)V

    .line 176
    invoke-static {p0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->getInstance(Landroid/content/Context;)Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->initNotificationDb()V

    const-string p1, "MainActivity \u6e90\u751fandroid \u4e3b\u9875\u9762\u52a0\u8f7d end"

    .line 177
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lio/flutter/embedding/engine/FlutterEngineCache;->getInstance()Lio/flutter/embedding/engine/FlutterEngineCache;

    move-result-object p1

    const-string v0, "d_stack_engine"

    invoke-virtual {p1, v0}, Lio/flutter/embedding/engine/FlutterEngineCache;->get(Ljava/lang/String;)Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object p1

    return-object p1
.end method

.method public requestContactsPermissions()V
    .registers 5

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 281
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_CONTACTS"

    .line 282
    invoke-virtual {p0, v1}, Lcn/yoozworld/watch/ui/HomeActivity;->checkPermissions(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 283
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_52

    const-string v1, "\u6743\u9650\u4e0d\u4e3a\u7a7a,\u9700\u8981\u7533\u8bf7"

    .line 286
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 287
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcn/yoozworld/watch/ui/HomeActivity;->requestPermissions([Ljava/lang/String;I)V

    const/4 v1, 0x0

    .line 288
    :goto_31
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_52

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u7533\u8bf7: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_52
    return-void
.end method

.method public requestLocationPermissions()V
    .registers 5

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 246
    invoke-virtual {p0, v1}, Lcn/yoozworld/watch/ui/HomeActivity;->checkPermissions(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 247
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 249
    invoke-virtual {p0, v1}, Lcn/yoozworld/watch/ui/HomeActivity;->checkPermissions(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 250
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_1b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_53

    .line 253
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcn/yoozworld/watch/ui/HomeActivity;->requestPermissions([Ljava/lang/String;I)V

    const/4 v1, 0x0

    .line 254
    :goto_32
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_53

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u7533\u8bf7: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_53
    return-void
.end method

.method public requestPermissions()V
    .registers 5

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.READ_LOGS"

    .line 298
    invoke-virtual {p0, v1}, Lcn/yoozworld/watch/ui/HomeActivity;->checkPermissions(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 299
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 302
    invoke-virtual {p0, v1}, Lcn/yoozworld/watch/ui/HomeActivity;->checkPermissions(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 303
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    const-string v1, "android.permission.READ_CALL_LOG"

    .line 306
    invoke-virtual {p0, v1}, Lcn/yoozworld/watch/ui/HomeActivity;->checkPermissions(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 307
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_26
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_3d

    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 311
    invoke-virtual {p0, v1}, Lcn/yoozworld/watch/ui/HomeActivity;->checkPermissions(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 312
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "\u8fd8\u672a\u7533\u8bf7\u540e\u53f0\u5b9a\u4f4d\u6743\u9650"

    .line 313
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_42

    :cond_3d
    const-string v1, "\u5df2\u7ecf\u7533\u8bf7\u540e\u53f0\u5b9a\u4f4d\u6743\u9650"

    .line 315
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :goto_42
    const-string v1, "android.permission.BLUETOOTH_SCAN"

    .line 317
    invoke-virtual {p0, v1}, Lcn/yoozworld/watch/ui/HomeActivity;->checkPermissions(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 318
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4d
    const-string v1, "android.permission.BLUETOOTH"

    .line 320
    invoke-virtual {p0, v1}, Lcn/yoozworld/watch/ui/HomeActivity;->checkPermissions(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_58

    .line 321
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_58
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    .line 323
    invoke-virtual {p0, v1}, Lcn/yoozworld/watch/ui/HomeActivity;->checkPermissions(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_63

    .line 324
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_63
    const-string v1, "android.permission.BLUETOOTH_PRIVILEGED"

    .line 326
    invoke-virtual {p0, v1}, Lcn/yoozworld/watch/ui/HomeActivity;->checkPermissions(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6e

    .line 327
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6e
    const-string v1, "android.permission.RECEIVE_BOOT_COMPLETED"

    .line 329
    invoke-virtual {p0, v1}, Lcn/yoozworld/watch/ui/HomeActivity;->checkPermissions(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_79

    .line 330
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_79
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 333
    invoke-virtual {p0, v1}, Lcn/yoozworld/watch/ui/HomeActivity;->checkPermissions(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_84

    .line 334
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_84
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 336
    invoke-virtual {p0, v1}, Lcn/yoozworld/watch/ui/HomeActivity;->checkPermissions(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8f

    .line 337
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8f
    const-string v1, "android.permission.CALL_PHONE"

    .line 340
    invoke-virtual {p0, v1}, Lcn/yoozworld/watch/ui/HomeActivity;->checkPermissions(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9a

    .line 341
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9a
    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    .line 344
    invoke-virtual {p0, v1}, Lcn/yoozworld/watch/ui/HomeActivity;->checkPermissions(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a5

    .line 345
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a5
    const-string v1, "android.permission.READ_CONTACTS"

    .line 348
    invoke-virtual {p0, v1}, Lcn/yoozworld/watch/ui/HomeActivity;->checkPermissions(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b0

    .line 349
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b0
    const-string v1, "android.permission.ACCESS_NOTIFICATION_POLICY"

    .line 352
    invoke-virtual {p0, v1}, Lcn/yoozworld/watch/ui/HomeActivity;->checkPermissions(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_bb

    .line 353
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_bb
    const-string v1, "android.permission.ANSWER_PHONE_CALLS"

    .line 356
    invoke-virtual {p0, v1}, Lcn/yoozworld/watch/ui/HomeActivity;->checkPermissions(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c6

    .line 357
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c6
    const-string v1, "android.permission.VIBRATE"

    .line 360
    invoke-virtual {p0, v1}, Lcn/yoozworld/watch/ui/HomeActivity;->checkPermissions(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d1

    .line 361
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d1
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 364
    invoke-virtual {p0, v1}, Lcn/yoozworld/watch/ui/HomeActivity;->checkPermissions(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_dc

    .line 365
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_dc
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 368
    invoke-virtual {p0, v1}, Lcn/yoozworld/watch/ui/HomeActivity;->checkPermissions(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e7

    .line 369
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_e7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_124

    const-string v1, "\u6743\u9650\u4e0d\u4e3a\u7a7a,\u9700\u8981\u7533\u8bf7"

    .line 373
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 374
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcn/yoozworld/watch/ui/HomeActivity;->requestPermissions([Ljava/lang/String;I)V

    const/4 v1, 0x0

    .line 375
    :goto_103
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_124

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u7533\u8bf7: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_103

    .line 379
    :cond_124
    invoke-static {}, Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;->getInstance()Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;->requestRebindNotificationService(Landroid/content/Context;)Z

    return-void
.end method

.method public requestReadCallPhonePermissions()V
    .registers 5

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.READ_CALL_LOG"

    .line 264
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-virtual {p0, v1}, Lcn/yoozworld/watch/ui/HomeActivity;->checkPermissions(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 266
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_50

    const-string v1, "\u6743\u9650\u4e0d\u4e3a\u7a7a,\u9700\u8981\u7533\u8bf7"

    .line 270
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 271
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcn/yoozworld/watch/ui/HomeActivity;->requestPermissions([Ljava/lang/String;I)V

    const/4 v1, 0x0

    .line 272
    :goto_2f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_50

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u7533\u8bf7: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_50
    return-void
.end method
