.class public Lcn/baos/watch/sdk/old/callcontroller/CallListenManager;
.super Ljava/lang/Object;
.source "CallListenManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/sdk/old/callcontroller/CallListenManager$MyPhoneStateListener;
    }
.end annotation


# static fields
.field private static final ourInstance:Lcn/baos/watch/sdk/old/callcontroller/CallListenManager;

.field public static phoneState:Z = false


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhoneStateListener:Lcn/baos/watch/sdk/old/callcontroller/CallListenManager$MyPhoneStateListener;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcn/baos/watch/sdk/old/callcontroller/CallListenManager;

    invoke-direct {v0}, Lcn/baos/watch/sdk/old/callcontroller/CallListenManager;-><init>()V

    sput-object v0, Lcn/baos/watch/sdk/old/callcontroller/CallListenManager;->ourInstance:Lcn/baos/watch/sdk/old/callcontroller/CallListenManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getIncomingCall()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcn/baos/watch/sdk/old/callcontroller/CallListenManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcn/baos/watch/sdk/old/callcontroller/CallListenManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 76
    new-instance v0, Lcn/baos/watch/sdk/old/callcontroller/CallListenManager$MyPhoneStateListener;

    iget-object v1, p0, Lcn/baos/watch/sdk/old/callcontroller/CallListenManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcn/baos/watch/sdk/old/callcontroller/CallListenManager$MyPhoneStateListener;-><init>(Lcn/baos/watch/sdk/old/callcontroller/CallListenManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/old/callcontroller/CallListenManager;->mPhoneStateListener:Lcn/baos/watch/sdk/old/callcontroller/CallListenManager$MyPhoneStateListener;

    .line 77
    iget-object v1, p0, Lcn/baos/watch/sdk/old/callcontroller/CallListenManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    const/16 v2, 0x20

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private getIncomingCallCancel()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcn/baos/watch/sdk/old/callcontroller/CallListenManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcn/baos/watch/sdk/old/callcontroller/CallListenManager;->mPhoneStateListener:Lcn/baos/watch/sdk/old/callcontroller/CallListenManager$MyPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method static getInstance()Lcn/baos/watch/sdk/old/callcontroller/CallListenManager;
    .locals 1

    .line 44
    sget-object v0, Lcn/baos/watch/sdk/old/callcontroller/CallListenManager;->ourInstance:Lcn/baos/watch/sdk/old/callcontroller/CallListenManager;

    return-object v0
.end method


# virtual methods
.method public initCallListenManager(Landroid/content/Context;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcn/baos/watch/sdk/old/callcontroller/CallListenManager;->mContext:Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Lcn/baos/watch/sdk/old/callcontroller/CallListenManager;->getIncomingCall()V

    return-void
.end method

.method public releaseCallListenManager()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcn/baos/watch/sdk/old/callcontroller/CallListenManager;->getIncomingCallCancel()V

    return-void
.end method
