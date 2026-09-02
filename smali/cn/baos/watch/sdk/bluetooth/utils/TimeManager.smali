.class public Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;
.super Ljava/lang/Object;
.source "TimeManager.java"


# static fields
.field private static instance:Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;


# instance fields
.field public mDefTime:I

.field public mFirstStatus:I

.field public mSecondStatus:I

.field public mThirdStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 8
    iput v0, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mDefTime:I

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mFirstStatus:I

    .line 12
    iput v0, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mSecondStatus:I

    .line 13
    iput v0, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mThirdStatus:I

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;
    .registers 2

    .line 18
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->instance:Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;

    if-nez v0, :cond_17

    .line 19
    const-class v0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;

    monitor-enter v0

    .line 20
    :try_start_7
    sget-object v1, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->instance:Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;

    if-nez v1, :cond_12

    .line 21
    new-instance v1, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->instance:Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;

    .line 23
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 25
    :cond_17
    :goto_17
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->instance:Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;

    return-object v0
.end method


# virtual methods
.method public getDefTime()I
    .registers 2

    .line 29
    iget v0, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mDefTime:I

    return v0
.end method

.method public initManager(J)V
    .registers 15

    .line 37
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->isStopTransmission()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 40
    :cond_b
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->getFileSizeLength()J

    move-result-wide v0

    .line 41
    iget v2, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mFirstStatus:I

    const/4 v3, -0x1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide v6, 0x4061400000000000L    # 138.0

    const-wide/16 v8, 0x89

    const/4 v10, 0x1

    if-nez v2, :cond_37

    add-long/2addr v0, v8

    long-to-double v0, v0

    div-double/2addr v0, v6

    add-double/2addr v0, v4

    .line 42
    iget v2, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mDefTime:I

    int-to-double v4, v2

    div-double/2addr v0, v4

    long-to-double p1, p1

    cmpg-double p1, p1, v0

    if-gtz p1, :cond_33

    .line 44
    iput v10, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mFirstStatus:I

    goto/16 :goto_d1

    .line 46
    :cond_33
    iput v3, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mFirstStatus:I

    goto/16 :goto_d1

    .line 49
    :cond_37
    iget v2, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mSecondStatus:I

    if-nez v2, :cond_50

    add-long/2addr v0, v8

    long-to-double v0, v0

    div-double/2addr v0, v6

    add-double/2addr v0, v4

    .line 50
    iget v2, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mDefTime:I

    int-to-double v4, v2

    div-double/2addr v0, v4

    long-to-double p1, p1

    cmpg-double p1, p1, v0

    if-gtz p1, :cond_4c

    .line 52
    iput v10, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mSecondStatus:I

    goto/16 :goto_d1

    .line 54
    :cond_4c
    iput v3, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mSecondStatus:I

    goto/16 :goto_d1

    .line 57
    :cond_50
    iget v11, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mThirdStatus:I

    if-nez v11, :cond_67

    add-long/2addr v0, v8

    long-to-double v0, v0

    div-double/2addr v0, v6

    add-double/2addr v0, v4

    .line 58
    iget v2, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mDefTime:I

    int-to-double v4, v2

    div-double/2addr v0, v4

    long-to-double p1, p1

    cmpg-double p1, p1, v0

    if-gtz p1, :cond_64

    .line 60
    iput v10, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mThirdStatus:I

    goto :goto_a7

    .line 62
    :cond_64
    iput v3, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mThirdStatus:I

    goto :goto_a7

    .line 65
    :cond_67
    iput v2, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mFirstStatus:I

    .line 66
    iput v11, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mSecondStatus:I

    add-long/2addr v0, v8

    long-to-double v0, v0

    div-double/2addr v0, v6

    add-double/2addr v0, v4

    .line 67
    iget v2, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mDefTime:I

    int-to-double v4, v2

    div-double/2addr v0, v4

    long-to-double p1, p1

    cmpg-double p1, p1, v0

    if-gtz p1, :cond_7b

    .line 69
    iput v10, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mThirdStatus:I

    goto :goto_7d

    .line 71
    :cond_7b
    iput v3, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mThirdStatus:I

    .line 73
    :goto_7d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u8017\u65f6\u6d4b\u8bd5: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mFirstStatus:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mSecondStatus:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mThirdStatus:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 76
    :goto_a7
    iget p1, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mFirstStatus:I

    iget p2, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mSecondStatus:I

    add-int v0, p1, p2

    iget v1, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mThirdStatus:I

    add-int/2addr v0, v1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b9

    .line 77
    iget p1, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mDefTime:I

    sub-int/2addr p1, v10

    iput p1, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mDefTime:I

    goto :goto_c3

    :cond_b9
    add-int/2addr p1, p2

    add-int/2addr p1, v1

    const/4 p2, -0x3

    if-ne p1, p2, :cond_c3

    .line 79
    iget p1, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mDefTime:I

    add-int/2addr p1, v10

    iput p1, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mDefTime:I

    .line 82
    :cond_c3
    :goto_c3
    iget p1, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mDefTime:I

    const/4 p2, 0x7

    if-ge p1, p2, :cond_cb

    .line 83
    iput p2, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mDefTime:I

    goto :goto_d1

    :cond_cb
    const/16 p2, 0x32

    if-le p1, p2, :cond_d1

    .line 85
    iput p2, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mDefTime:I

    :cond_d1
    :goto_d1
    return-void
.end method

.method public setDefTime(I)V
    .registers 2

    .line 33
    iput p1, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mDefTime:I

    return-void
.end method
