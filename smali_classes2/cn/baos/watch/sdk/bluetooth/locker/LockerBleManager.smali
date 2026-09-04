.class public Lcn/baos/watch/sdk/bluetooth/locker/LockerBleManager;
.super Ljava/lang/Object;
.source "LockerBleManager.java"


# static fields
.field private static final bleWriteLockerForC:Ljava/lang/Object;

.field private static final mSendLocker:Ljava/lang/Object;

.field private static final mWriteLocker:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/baos/watch/sdk/bluetooth/locker/LockerBleManager;->bleWriteLockerForC:Ljava/lang/Object;

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/baos/watch/sdk/bluetooth/locker/LockerBleManager;->mWriteLocker:Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/baos/watch/sdk/bluetooth/locker/LockerBleManager;->mSendLocker:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBleWriteLockerForC()Ljava/lang/Object;
    .locals 1

    .line 21
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/locker/LockerBleManager;->bleWriteLockerForC:Ljava/lang/Object;

    return-object v0
.end method

.method public static getSendLocker()Ljava/lang/Object;
    .locals 1

    .line 29
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/locker/LockerBleManager;->mSendLocker:Ljava/lang/Object;

    return-object v0
.end method

.method public static getWriteLocker()Ljava/lang/Object;
    .locals 1

    .line 25
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/locker/LockerBleManager;->mWriteLocker:Ljava/lang/Object;

    return-object v0
.end method
