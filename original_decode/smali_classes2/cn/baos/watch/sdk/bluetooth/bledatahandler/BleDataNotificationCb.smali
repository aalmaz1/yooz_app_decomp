.class public Lcn/baos/watch/sdk/bluetooth/bledatahandler/BleDataNotificationCb;
.super Ljava/lang/Object;
.source "BleDataNotificationCb.java"

# interfaces
.implements Lcn/baos/watch/sdk/manager/jni/init/IBleDataNotificationCallBack;


# instance fields
.field private mStDateHandler:Lcn/baos/watch/sdk/bluetooth/bledatahandler/StDateHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcn/baos/watch/sdk/bluetooth/bledatahandler/StDateHandler;

    invoke-direct {v0}, Lcn/baos/watch/sdk/bluetooth/bledatahandler/StDateHandler;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bledatahandler/BleDataNotificationCb;->mStDateHandler:Lcn/baos/watch/sdk/bluetooth/bledatahandler/StDateHandler;

    return-void
.end method


# virtual methods
.method public onBleDataNotification(II)Z
    .locals 1

    .line 21
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bledatahandler/BleDataNotificationCb;->mStDateHandler:Lcn/baos/watch/sdk/bluetooth/bledatahandler/StDateHandler;

    invoke-virtual {v0, p1, p2}, Lcn/baos/watch/sdk/bluetooth/bledatahandler/StDateHandler;->handleStBleDate(II)V

    const/4 p1, 0x1

    return p1
.end method
