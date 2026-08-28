.class public Lcn/baos/watch/sdk/base/AppDataConfig;
.super Ljava/lang/Object;
.source "AppDataConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;
    }
.end annotation


# static fields
.field public static instance:Lcn/baos/watch/sdk/base/AppDataConfig;


# instance fields
.field private aMapTemid:Ljava/lang/String;

.field private aMapUuid:Ljava/lang/String;

.field private btBondStatus:Z

.field private btDialog:Z

.field private btDialogTwo:Z

.field private btMac:Ljava/lang/String;

.field private connectingMac:Ljava/lang/String;

.field private deviceLock:Z

.field private deviceResource:Ljava/lang/String;

.field private findPhone:Z

.field private localLanguage:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field private mtuSetting:Z

.field private musicSwatch:Z

.field private pairCode:I

.field private phoneDeviceId:Ljava/lang/String;

.field private phoneUserId:Ljava/lang/String;

.field private reloadStatus:Z

.field private stepSum:Ljava/lang/String;

.field private unHandleDeviceList:Ljava/lang/String;

.field private watchListJson:Ljava/lang/String;

.field private watchLuangh:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;
    .registers 2

    .line 88
    sget-object v0, Lcn/baos/watch/sdk/base/AppDataConfig;->instance:Lcn/baos/watch/sdk/base/AppDataConfig;

    if-nez v0, :cond_17

    .line 89
    const-class v0, Lcn/baos/watch/sdk/base/AppDataConfig;

    monitor-enter v0

    .line 90
    :try_start_7
    sget-object v1, Lcn/baos/watch/sdk/base/AppDataConfig;->instance:Lcn/baos/watch/sdk/base/AppDataConfig;

    if-nez v1, :cond_12

    .line 91
    new-instance v1, Lcn/baos/watch/sdk/base/AppDataConfig;

    invoke-direct {v1}, Lcn/baos/watch/sdk/base/AppDataConfig;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/base/AppDataConfig;->instance:Lcn/baos/watch/sdk/base/AppDataConfig;

    .line 93
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 95
    :cond_17
    :goto_17
    sget-object v0, Lcn/baos/watch/sdk/base/AppDataConfig;->instance:Lcn/baos/watch/sdk/base/AppDataConfig;

    return-object v0
.end method


# virtual methods
.method public deleteCurrentConfig()Z
    .registers 4

    .line 254
    iget-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->mContext:Landroid/content/Context;

    sget-object v1, Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;->KEY_CONNECT_CONFIG:Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->saveStringByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public deleteCurrentConfig(Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;)Z
    .registers 7

    .line 212
    iget-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->mContext:Landroid/content/Context;

    sget-object v1, Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;->KEY_CONNECT_CONFIG:Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--loadConnectConfig--app--deleteCurrentConfig-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--loadConnectConfig--app--deleteCurrentConfig-delete->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 215
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 216
    new-instance v2, Lcn/baos/watch/sdk/base/AppDataConfig$2;

    invoke-direct {v2, p0}, Lcn/baos/watch/sdk/base/AppDataConfig$2;-><init>(Lcn/baos/watch/sdk/base/AppDataConfig;)V

    invoke-virtual {v2}, Lcn/baos/watch/sdk/base/AppDataConfig$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 217
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 218
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_8a

    .line 219
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8a

    if-eqz p1, :cond_8a

    .line 220
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_60
    :goto_60
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    .line 221
    iget-object v3, v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_60

    iget-object v3, p1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 222
    iget-object v3, v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    iget-object v4, p1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_60

    .line 223
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_60

    .line 228
    :cond_8a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "--loadConnectConfig--app--deleteCurrentConfig-delete-end>"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 229
    iget-object p1, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->mContext:Landroid/content/Context;

    sget-object v0, Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;->KEY_CONNECT_CONFIG:Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->saveStringByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getAllConfig()Ljava/lang/String;
    .registers 5

    .line 294
    iget-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->mContext:Landroid/content/Context;

    sget-object v1, Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;->KEY_CONNECT_CONFIG:Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--loadConnectConfig--app--data-l-getAllConfig-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 296
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 297
    new-instance v2, Lcn/baos/watch/sdk/base/AppDataConfig$6;

    invoke-direct {v2, p0}, Lcn/baos/watch/sdk/base/AppDataConfig$6;-><init>(Lcn/baos/watch/sdk/base/AppDataConfig;)V

    invoke-virtual {v2}, Lcn/baos/watch/sdk/base/AppDataConfig$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 298
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4f

    .line 299
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4f

    .line 300
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    .line 301
    iget-object v3, v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    iput-object v3, v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->deviceAddress:Ljava/lang/String;

    goto :goto_3e

    .line 304
    :cond_4f
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllListConfig()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->mContext:Landroid/content/Context;

    sget-object v1, Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;->KEY_CONNECT_CONFIG:Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--loadConnectConfig--app--data-l-getAllListConfig-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 281
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 282
    new-instance v2, Lcn/baos/watch/sdk/base/AppDataConfig$5;

    invoke-direct {v2, p0}, Lcn/baos/watch/sdk/base/AppDataConfig$5;-><init>(Lcn/baos/watch/sdk/base/AppDataConfig;)V

    invoke-virtual {v2}, Lcn/baos/watch/sdk/base/AppDataConfig$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 283
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4f

    .line 284
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4f

    .line 285
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    .line 286
    iget-object v3, v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    iput-object v3, v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->deviceAddress:Ljava/lang/String;

    goto :goto_3e

    .line 289
    :cond_4f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--loadConnectConfig--app--data-l-getAllListConfig-configList---"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method public getBtMac()Ljava/lang/String;
    .registers 2

    .line 400
    iget-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->btMac:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectingMac()Ljava/lang/String;
    .registers 2

    .line 431
    iget-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->connectingMac:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceResource()Ljava/lang/String;
    .registers 2

    .line 467
    iget-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->deviceResource:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalLanguage()Ljava/lang/String;
    .registers 2

    .line 419
    iget-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->localLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getPairCode()I
    .registers 2

    .line 415
    iget v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->pairCode:I

    return v0
.end method

.method public getPhoneDeviceId()Ljava/lang/String;
    .registers 2

    .line 463
    iget-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->phoneDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneUserId()Ljava/lang/String;
    .registers 2

    .line 459
    iget-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->phoneUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getStepSum()Ljava/lang/String;
    .registers 2

    .line 427
    iget-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->stepSum:Ljava/lang/String;

    return-object v0
.end method

.method public getUnHandleDeviceList()Ljava/lang/String;
    .registers 2

    .line 471
    iget-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->unHandleDeviceList:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchListJson()Ljava/lang/String;
    .registers 2

    .line 411
    iget-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->watchListJson:Ljava/lang/String;

    return-object v0
.end method

.method public getaMapTemid()Ljava/lang/String;
    .registers 2

    .line 451
    iget-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->aMapTemid:Ljava/lang/String;

    return-object v0
.end method

.method public getaMapUuid()Ljava/lang/String;
    .registers 2

    .line 447
    iget-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->aMapUuid:Ljava/lang/String;

    return-object v0
.end method

.method public initData(Landroid/content/Context;)V
    .registers 6

    .line 99
    iget-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    return-void

    .line 102
    :cond_5
    iput-object p1, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->mContext:Landroid/content/Context;

    .line 105
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_CONNECT_BT_MAC:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->btMac:Ljava/lang/String;

    .line 107
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_PAIR_CODE:Ljava/lang/String;

    const/16 v2, 0x14

    invoke-static {p1, v0, v2}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryIntByKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->pairCode:I

    .line 108
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_RELOAD_CLOSE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryBooleanByKeySetBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->reloadStatus:Z

    .line 110
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_CONNECT_MAC:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->connectingMac:Ljava/lang/String;

    .line 112
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_LOCAL_Language:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->localLanguage:Ljava/lang/String;

    .line 113
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_STEP_SUM:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->stepSum:Ljava/lang/String;

    .line 115
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_BOND_BT_DIALOG:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryBooleanByKeySetBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->btDialog:Z

    .line 116
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_BOND_BT_SUCCESS:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryBooleanByKeySetBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->btBondStatus:Z

    .line 117
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_BOND_BT_DIALOG_TWO:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {p1, v0, v3}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryBooleanByKeySetBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->btDialogTwo:Z

    .line 119
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_AMAP_UUID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->aMapUuid:Ljava/lang/String;

    .line 120
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_AMAP_TERMINALID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->aMapTemid:Ljava/lang/String;

    .line 122
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_MTU_SETTING:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryBooleanByKeySetBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->mtuSetting:Z

    .line 124
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_PHONE_TYPE_USERID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->phoneUserId:Ljava/lang/String;

    .line 125
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_PHONE_TYPE_DEVICEID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->phoneDeviceId:Ljava/lang/String;

    .line 127
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_DEVICE_RESOURCE_LANGUAGE:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->deviceResource:Ljava/lang/String;

    const-string v0, "KEY_WATCH_DIS_HANDLE_MAC_ADDRESS"

    .line 129
    invoke-static {p1, v0, v1}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->unHandleDeviceList:Ljava/lang/String;

    const-string v0, "SUO_PING"

    .line 131
    invoke-static {p1, v0, v3}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryBooleanByKeySetBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->deviceLock:Z

    const-string v0, "KEY_WATCH_FIND_PHONE_SWITCH"

    .line 133
    invoke-static {p1, v0, v3}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryBooleanByKeySetBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->findPhone:Z

    const-string v0, "KEY_WATCH_MUSIC_SWITCH"

    .line 135
    invoke-static {p1, v0, v2}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryBooleanByKeySetBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->musicSwatch:Z

    .line 137
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_WATCH_LUANGH:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryBooleanByKeySetBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->watchLuangh:Z

    return-void
.end method

.method public isBindLast(Ljava/lang/String;)Z
    .registers 6

    .line 259
    iget-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->mContext:Landroid/content/Context;

    sget-object v1, Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;->KEY_CONNECT_CONFIG:Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--loadConnectConfig--app--data-l-isBindLast-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 261
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_64

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_64

    .line 263
    :cond_2c
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 264
    new-instance v3, Lcn/baos/watch/sdk/base/AppDataConfig$4;

    invoke-direct {v3, p0}, Lcn/baos/watch/sdk/base/AppDataConfig$4;-><init>(Lcn/baos/watch/sdk/base/AppDataConfig;)V

    invoke-virtual {v3}, Lcn/baos/watch/sdk/base/AppDataConfig$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 265
    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_64

    .line 267
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_64

    .line 268
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    if-eqz v1, :cond_4c

    .line 269
    iget-object v1, v1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    const/4 p1, 0x1

    return p1

    :cond_64
    :goto_64
    return v2
.end method

.method public isBindWatch()Z
    .registers 2

    .line 404
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 406
    iget-boolean v0, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isActive:Z

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public isBtBondStatus()Z
    .registers 2

    .line 439
    iget-boolean v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->btBondStatus:Z

    return v0
.end method

.method public isBtDialog()Z
    .registers 2

    .line 435
    iget-boolean v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->btDialog:Z

    return v0
.end method

.method public isBtDialogTwo()Z
    .registers 2

    .line 443
    iget-boolean v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->btDialogTwo:Z

    return v0
.end method

.method public isDeviceLock()Z
    .registers 2

    .line 475
    iget-boolean v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->deviceLock:Z

    return v0
.end method

.method public isFindPhone()Z
    .registers 2

    .line 479
    iget-boolean v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->findPhone:Z

    return v0
.end method

.method public isMtuSetting()Z
    .registers 2

    .line 455
    iget-boolean v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->mtuSetting:Z

    return v0
.end method

.method public isMusicSwatch()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isReloadStatus()Z
    .registers 2

    .line 423
    iget-boolean v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->reloadStatus:Z

    return v0
.end method

.method public isWatchLuangh()Z
    .registers 2

    .line 487
    iget-boolean v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->watchLuangh:Z

    return v0
.end method

.method public loadConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;
    .registers 9

    .line 308
    iget-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->mContext:Landroid/content/Context;

    sget-object v1, Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;->KEY_CONNECT_CONFIG:Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--loadConnectConfig--app--data-l-loadConnectConfig-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 310
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 311
    new-instance v2, Lcn/baos/watch/sdk/base/AppDataConfig$7;

    invoke-direct {v2, p0}, Lcn/baos/watch/sdk/base/AppDataConfig$7;-><init>(Lcn/baos/watch/sdk/base/AppDataConfig;)V

    invoke-virtual {v2}, Lcn/baos/watch/sdk/base/AppDataConfig$7;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 312
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 313
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_73

    .line 315
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_73

    .line 316
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    .line 317
    iget-boolean v4, v3, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isActive:Z

    if-eqz v4, :cond_44

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--loadConnectConfig--app--data-l-loadConnectConfig end-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    move-object v1, v3

    :cond_70
    if-eqz v1, :cond_73

    return-object v1

    :cond_73
    if-nez v1, :cond_e7

    if-eqz v0, :cond_e7

    .line 327
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e7

    .line 328
    iget-object v2, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->mContext:Landroid/content/Context;

    sget-object v3, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_LAST_MAC:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_98

    .line 330
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    .line 331
    iput-boolean v5, v1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isActive:Z

    goto :goto_c9

    .line 333
    :cond_98
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 334
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9f
    :goto_9f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    if-eqz v6, :cond_9f

    .line 336
    iput-boolean v4, v6, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isActive:Z

    .line 337
    iget-object v7, v6, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-static {v7}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9f

    .line 338
    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9f

    iget-object v7, v6, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    .line 339
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9f

    .line 340
    iput-boolean v5, v6, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isActive:Z

    move-object v1, v6

    goto :goto_9f

    :cond_c9
    :goto_c9
    if-nez v1, :cond_d3

    .line 348
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    .line 349
    iput-boolean v5, v1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isActive:Z

    .line 352
    :cond_d3
    iget-object v2, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->mContext:Landroid/content/Context;

    sget-object v3, Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;->KEY_CONNECT_CONFIG:Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->saveStringByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e7
    return-object v1
.end method

.method public put(Ljava/lang/String;I)V
    .registers 4

    .line 387
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 389
    :cond_7
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_PAIR_CODE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 390
    iput p2, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->pairCode:I

    .line 392
    :cond_11
    iget-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->saveIntByKey(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 151
    :cond_7
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_CONNECT_BT_MAC:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 152
    iput-object p2, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->btMac:Ljava/lang/String;

    goto :goto_74

    .line 157
    :cond_12
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_LOCAL_Language:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 158
    iput-object p2, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->localLanguage:Ljava/lang/String;

    goto :goto_74

    .line 159
    :cond_1d
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_STEP_SUM:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 160
    iput-object p2, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->stepSum:Ljava/lang/String;

    goto :goto_74

    .line 161
    :cond_28
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_CONNECT_MAC:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 162
    iput-object p2, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->connectingMac:Ljava/lang/String;

    goto :goto_74

    .line 163
    :cond_33
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_AMAP_UUID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 164
    iput-object p2, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->aMapUuid:Ljava/lang/String;

    goto :goto_74

    .line 165
    :cond_3e
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_AMAP_TERMINALID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 166
    iput-object p2, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->aMapTemid:Ljava/lang/String;

    goto :goto_74

    .line 167
    :cond_49
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_PHONE_TYPE_USERID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 168
    iput-object p2, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->phoneUserId:Ljava/lang/String;

    goto :goto_74

    .line 169
    :cond_54
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_PHONE_TYPE_DEVICEID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 170
    iput-object p2, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->phoneDeviceId:Ljava/lang/String;

    goto :goto_74

    .line 171
    :cond_5f
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_DEVICE_RESOURCE_LANGUAGE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 172
    iput-object p2, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->deviceResource:Ljava/lang/String;

    goto :goto_74

    :cond_6a
    const-string v0, "KEY_WATCH_DIS_HANDLE_MAC_ADDRESS"

    .line 173
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 174
    iput-object p2, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->unHandleDeviceList:Ljava/lang/String;

    .line 176
    :cond_74
    :goto_74
    iget-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->saveStringByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .registers 4

    .line 359
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 364
    :cond_7
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_RELOAD_CLOSE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 365
    iput-boolean p2, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->reloadStatus:Z

    goto :goto_69

    .line 366
    :cond_12
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_BOND_BT_DIALOG:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 367
    iput-boolean p2, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->btDialog:Z

    goto :goto_69

    .line 368
    :cond_1d
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_BOND_BT_SUCCESS:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 369
    iput-boolean p2, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->btBondStatus:Z

    goto :goto_69

    .line 370
    :cond_28
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_BOND_BT_DIALOG_TWO:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 371
    iput-boolean p2, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->btDialogTwo:Z

    goto :goto_69

    .line 372
    :cond_33
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_MTU_SETTING:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 373
    iput-boolean p2, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->mtuSetting:Z

    goto :goto_69

    :cond_3e
    const-string v0, "SUO_PING"

    .line 374
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 375
    iput-boolean p2, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->deviceLock:Z

    goto :goto_69

    :cond_49
    const-string v0, "KEY_WATCH_FIND_PHONE_SWITCH"

    .line 376
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 377
    iput-boolean p2, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->findPhone:Z

    goto :goto_69

    :cond_54
    const-string v0, "KEY_WATCH_MUSIC_SWITCH"

    .line 378
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 379
    iput-boolean p2, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->musicSwatch:Z

    goto :goto_69

    .line 380
    :cond_5f
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_WATCH_LUANGH:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 381
    iput-boolean p2, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->watchLuangh:Z

    .line 383
    :cond_69
    :goto_69
    iget-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->saveBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public saveCurrentConfig(Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;)Z
    .registers 8

    .line 183
    iget-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->mContext:Landroid/content/Context;

    sget-object v1, Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;->KEY_CONNECT_CONFIG:Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--loadConnectConfig--app--data-l-loadConnectConfig-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 185
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 186
    new-instance v2, Lcn/baos/watch/sdk/base/AppDataConfig$1;

    invoke-direct {v2, p0}, Lcn/baos/watch/sdk/base/AppDataConfig$1;-><init>(Lcn/baos/watch/sdk/base/AppDataConfig;)V

    invoke-virtual {v2}, Lcn/baos/watch/sdk/base/AppDataConfig$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 187
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 188
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v0, :cond_60

    .line 190
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_60

    if-eqz p1, :cond_60

    const/4 v3, 0x0

    .line 192
    :goto_43
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_65

    .line 193
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    iget-object v4, v4, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    iget-object v5, p1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 194
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    :cond_5e
    add-int/2addr v3, v2

    goto :goto_43

    .line 199
    :cond_60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 202
    :cond_65
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 206
    iget-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->mContext:Landroid/content/Context;

    sget-object v1, Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;->KEY_CONNECT_CONFIG:Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->saveStringByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--saveCurrentConfig--app--data-l-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return v2
.end method

.method public updateCurrentConfig(Ljava/lang/String;Z)Z
    .registers 7

    .line 234
    iget-object v0, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->mContext:Landroid/content/Context;

    sget-object v1, Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;->KEY_CONNECT_CONFIG:Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--loadConnectConfig--app--data-l -update-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 236
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 237
    new-instance v2, Lcn/baos/watch/sdk/base/AppDataConfig$3;

    invoke-direct {v2, p0}, Lcn/baos/watch/sdk/base/AppDataConfig$3;-><init>(Lcn/baos/watch/sdk/base/AppDataConfig;)V

    invoke-virtual {v2}, Lcn/baos/watch/sdk/base/AppDataConfig$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 238
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_66

    .line 240
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_66

    .line 241
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3e
    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    const/4 v3, 0x0

    .line 242
    iput-boolean v3, v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isActive:Z

    .line 243
    iget-object v3, v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 244
    iput-boolean p2, v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isActive:Z

    goto :goto_3e

    .line 248
    :cond_66
    iget-object p1, p0, Lcn/baos/watch/sdk/base/AppDataConfig;->mContext:Landroid/content/Context;

    sget-object p2, Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;->KEY_CONNECT_CONFIG:Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->saveStringByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "--saveCurrentConfig--app--data-l-"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
