.class public Lcn/baos/watch/sdk/manager/locker/LockerManager;
.super Ljava/lang/Object;
.source "LockerManager.java"


# static fields
.field private static instace:Lcn/baos/watch/sdk/manager/locker/LockerManager;


# instance fields
.field alexaLocker:Ljava/lang/Object;

.field dataBaseLocker:Ljava/lang/Object;

.field getContactInfoLocker:Ljava/lang/Object;

.field getFallLocker:Ljava/lang/Object;

.field getWatchInfoLocker:Ljava/lang/Object;

.field getWorldLocaker:Ljava/lang/Object;

.field nfcLocker:Ljava/lang/Object;

.field payLocker:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/manager/locker/LockerManager;->nfcLocker:Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/manager/locker/LockerManager;->alexaLocker:Ljava/lang/Object;

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/manager/locker/LockerManager;->payLocker:Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/manager/locker/LockerManager;->dataBaseLocker:Ljava/lang/Object;

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getWatchInfoLocker:Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getContactInfoLocker:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getFallLocker:Ljava/lang/Object;

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getWorldLocaker:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;
    .locals 2

    .line 17
    const-class v0, Lcn/baos/watch/sdk/manager/locker/LockerManager;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcn/baos/watch/sdk/manager/locker/LockerManager;->instace:Lcn/baos/watch/sdk/manager/locker/LockerManager;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcn/baos/watch/sdk/manager/locker/LockerManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/manager/locker/LockerManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/manager/locker/LockerManager;->instace:Lcn/baos/watch/sdk/manager/locker/LockerManager;

    .line 21
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    sget-object v0, Lcn/baos/watch/sdk/manager/locker/LockerManager;->instace:Lcn/baos/watch/sdk/manager/locker/LockerManager;

    return-object v0

    :catchall_0
    move-exception v1

    .line 21
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getAlexaLocker()Ljava/lang/Object;
    .locals 1

    .line 30
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/locker/LockerManager;->alexaLocker:Ljava/lang/Object;

    return-object v0
.end method

.method public getDataBaseLocker()Ljava/lang/Object;
    .locals 1

    .line 38
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/locker/LockerManager;->dataBaseLocker:Ljava/lang/Object;

    return-object v0
.end method

.method public getGetContactInfoLocker()Ljava/lang/Object;
    .locals 1

    .line 46
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getContactInfoLocker:Ljava/lang/Object;

    return-object v0
.end method

.method public getGetFallLocker()Ljava/lang/Object;
    .locals 1

    .line 54
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getFallLocker:Ljava/lang/Object;

    return-object v0
.end method

.method public getGetWatchInfoLocker()Ljava/lang/Object;
    .locals 1

    .line 42
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getWatchInfoLocker:Ljava/lang/Object;

    return-object v0
.end method

.method public getGetWorldLocaker()Ljava/lang/Object;
    .locals 1

    .line 50
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getWorldLocaker:Ljava/lang/Object;

    return-object v0
.end method

.method public getNfcLocker()Ljava/lang/Object;
    .locals 1

    .line 26
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/locker/LockerManager;->nfcLocker:Ljava/lang/Object;

    return-object v0
.end method

.method public getPayLocker()Ljava/lang/Object;
    .locals 1

    .line 34
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/locker/LockerManager;->payLocker:Ljava/lang/Object;

    return-object v0
.end method
