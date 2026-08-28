.class public Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;
.super Ljava/lang/Object;
.source "ConnectConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;
    }
.end annotation


# instance fields
.field public CHAR_NOTIFICATION_UUID:Ljava/util/UUID;

.field public CHAR_WRITE_WITHOUT_RESPONSE_NOTIFY_UUID:Ljava/util/UUID;

.field public SERVICE_UUID:Ljava/util/UUID;

.field public UUID_CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR:Ljava/util/UUID;

.field public bleConnectImplName:Ljava/lang/String;

.field public bond:Z

.field public deviceAddress:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;

.field public deviceType:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;

.field public isActive:Z

.field public isJLW6:Z

.field public isScan:Z

.field public macAddress:Ljava/lang/String;

.field public maxBleMtuSize:I

.field public minRssi:I

.field public paired:Z

.field public peerUUID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isScan:Z

    return-void
.end method
