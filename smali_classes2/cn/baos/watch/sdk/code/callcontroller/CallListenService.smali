.class public Lcn/baos/watch/sdk/code/callcontroller/CallListenService;
.super Landroid/app/Service;
.source "CallListenService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/sdk/code/callcontroller/CallListenService$MyPhoneStateListener;
    }
.end annotation


# static fields
.field public static phoneState:Z = false


# instance fields
.field private mPhoneStateListener:Lcn/baos/watch/sdk/code/callcontroller/CallListenService$MyPhoneStateListener;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private getIncomingCall()V
    .locals 3

    const-string v0, "phone"

    .line 83
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/code/callcontroller/CallListenService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcn/baos/watch/sdk/code/callcontroller/CallListenService;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 84
    new-instance v0, Lcn/baos/watch/sdk/code/callcontroller/CallListenService$MyPhoneStateListener;

    invoke-direct {v0, p0, p0}, Lcn/baos/watch/sdk/code/callcontroller/CallListenService$MyPhoneStateListener;-><init>(Lcn/baos/watch/sdk/code/callcontroller/CallListenService;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/code/callcontroller/CallListenService;->mPhoneStateListener:Lcn/baos/watch/sdk/code/callcontroller/CallListenService$MyPhoneStateListener;

    .line 85
    iget-object v1, p0, Lcn/baos/watch/sdk/code/callcontroller/CallListenService;->telephonyManager:Landroid/telephony/TelephonyManager;

    const/16 v2, 0x20

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private getIncomingCallCancel()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcn/baos/watch/sdk/code/callcontroller/CallListenService;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcn/baos/watch/sdk/code/callcontroller/CallListenService;->mPhoneStateListener:Lcn/baos/watch/sdk/code/callcontroller/CallListenService$MyPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 47
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "phone \u6765\u7535\u670d\u52a1\u542f\u52a8"

    .line 48
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 51
    :try_start_0
    invoke-direct {p0}, Lcn/baos/watch/sdk/code/callcontroller/CallListenService;->getIncomingCall()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 65
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "\u624b\u673a\u6765\u7535\u76d1\u542c\u670d\u52a1\u88ab\u6740\u6b7b"

    .line 66
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcn/baos/watch/sdk/code/callcontroller/CallListenService;->getIncomingCallCancel()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method
