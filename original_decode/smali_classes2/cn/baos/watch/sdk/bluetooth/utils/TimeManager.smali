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
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

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
    .locals 2

    .line 18
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->instance:Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;

    if-nez v0, :cond_1

    .line 19
    const-class v0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->instance:Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->instance:Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;

    .line 23
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 25
    :cond_1
    :goto_0
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->instance:Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;

    return-object v0
.end method


# virtual methods
.method public getDefTime()I
    .locals 1

    .line 29
    iget v0, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mDefTime:I

    return v0
.end method

.method public initManager(J)V
    .locals 12

    .line 37
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->isStopTransmission()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 40
    :cond_0
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

    if-nez v2, :cond_2

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

    if-gtz p1, :cond_1

    .line 44
    iput v10, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mFirstStatus:I

    goto/16 :goto_3

    .line 46
    :cond_1
    iput v3, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mFirstStatus:I

    goto/16 :goto_3

    .line 49
    :cond_2
    iget v2, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mSecondStatus:I

    if-nez v2, :cond_4

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

    if-gtz p1, :cond_3

    .line 52
    iput v10, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mSecondStatus:I

    goto/16 :goto_3

    .line 54
    :cond_3
    iput v3, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mSecondStatus:I

    goto/16 :goto_3

    .line 57
    :cond_4
    iget v11, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mThirdStatus:I

    if-nez v11, :cond_6

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

    if-gtz p1, :cond_5

    .line 60
    iput v10, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mThirdStatus:I

    goto :goto_1

    .line 62
    :cond_5
    iput v3, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mThirdStatus:I

    goto :goto_1

    .line 65
    :cond_6
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

    if-gtz p1, :cond_7

    .line 69
    iput v10, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mThirdStatus:I

    goto :goto_0

    .line 71
    :cond_7
    iput v3, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mThirdStatus:I

    .line 73
    :goto_0
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
    :goto_1
    iget p1, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mFirstStatus:I

    iget p2, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mSecondStatus:I

    add-int v0, p1, p2

    iget v1, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mThirdStatus:I

    add-int/2addr v0, v1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    .line 77
    iget p1, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mDefTime:I

    sub-int/2addr p1, v10

    iput p1, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mDefTime:I

    goto :goto_2

    :cond_8
    add-int/2addr p1, p2

    add-int/2addr p1, v1

    const/4 p2, -0x3

    if-ne p1, p2, :cond_9

    .line 79
    iget p1, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mDefTime:I

    add-int/2addr p1, v10

    iput p1, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mDefTime:I

    .line 82
    :cond_9
    :goto_2
    iget p1, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mDefTime:I

    const/4 p2, 0x7

    if-ge p1, p2, :cond_a

    .line 83
    iput p2, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mDefTime:I

    goto :goto_3

    :cond_a
    const/16 p2, 0x32

    if-le p1, p2, :cond_b

    .line 85
    iput p2, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mDefTime:I

    :cond_b
    :goto_3
    return-void
.end method

.method public setDefTime(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->mDefTime:I

    return-void
.end method
