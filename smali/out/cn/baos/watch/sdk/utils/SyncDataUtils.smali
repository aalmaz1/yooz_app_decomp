.class public Lcn/baos/watch/sdk/utils/SyncDataUtils;
.super Ljava/lang/Object;
.source "SyncDataUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeIntArrToString([I)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    const-string p0, "0"

    return-object p0

    :cond_5
    const-string v0, ""

    const/4 v1, 0x0

    .line 81
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_40

    .line 82
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2a

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    .line 85
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_40
    return-object v0
.end method

.method public static changeSecondToHHMMSS(I)Ljava/lang/String;
    .registers 8

    if-gtz p0, :cond_5

    const-string p0, "00:00\'"

    return-object p0

    .line 250
    :cond_5
    div-int/lit8 v0, p0, 0x3c

    const-string v1, "\""

    const-string v2, "\'"

    const-string v3, ":"

    const/16 v4, 0x3c

    if-ge v0, v4, :cond_41

    .line 252
    rem-int/2addr p0, v4

    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-static {v5}, Lcn/baos/watch/sdk/utils/SyncDataUtils;->unitFormat(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcn/baos/watch/sdk/utils/SyncDataUtils;->unitFormat(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcn/baos/watch/sdk/utils/SyncDataUtils;->unitFormat(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_7e

    .line 255
    :cond_41
    div-int/lit8 v5, v0, 0x3c

    const/16 v6, 0x63

    if-le v5, v6, :cond_4a

    const-string p0, "99:59\'59\""

    return-object p0

    .line 259
    :cond_4a
    rem-int/2addr v0, v4

    mul-int/lit16 v4, v5, 0xe10

    sub-int/2addr p0, v4

    mul-int/lit8 v4, v0, 0x3c

    sub-int/2addr p0, v4

    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcn/baos/watch/sdk/utils/SyncDataUtils;->unitFormat(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcn/baos/watch/sdk/utils/SyncDataUtils;->unitFormat(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcn/baos/watch/sdk/utils/SyncDataUtils;->unitFormat(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_7e
    return-object p0
.end method

.method public static changeSecondToHHmm(I)Ljava/lang/String;
    .registers 6

    if-gtz p0, :cond_5

    const-string p0, "00:00\'"

    return-object p0

    :cond_5
    const/16 v0, 0x3c

    .line 226
    div-int/2addr p0, v0

    const-string v1, "\'"

    const-string v2, ":"

    if-ge p0, v0, :cond_31

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-static {v3}, Lcn/baos/watch/sdk/utils/SyncDataUtils;->unitFormat(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcn/baos/watch/sdk/utils/SyncDataUtils;->unitFormat(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5c

    .line 230
    :cond_31
    div-int/lit8 v3, p0, 0x3c

    const/16 v4, 0x63

    if-le v3, v4, :cond_3a

    const-string p0, "99:59\'"

    return-object p0

    .line 234
    :cond_3a
    rem-int/2addr p0, v0

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcn/baos/watch/sdk/utils/SyncDataUtils;->unitFormat(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcn/baos/watch/sdk/utils/SyncDataUtils;->unitFormat(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_5c
    return-object p0
.end method

.method public static changeSecondToMMss(I)Ljava/lang/String;
    .registers 6

    if-gtz p0, :cond_5

    const-string p0, "00\'00\""

    return-object p0

    .line 201
    :cond_5
    div-int/lit8 v0, p0, 0x3c

    const-string v1, "\""

    const/16 v2, 0x3c

    if-ge v0, v2, :cond_32

    .line 203
    rem-int/2addr p0, v2

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcn/baos/watch/sdk/utils/SyncDataUtils;->unitFormat(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcn/baos/watch/sdk/utils/SyncDataUtils;->unitFormat(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_65

    .line 206
    :cond_32
    div-int/lit8 v3, v0, 0x3c

    const/16 v4, 0x63

    if-le v3, v4, :cond_3b

    const-string p0, "59\':59\""

    return-object p0

    .line 210
    :cond_3b
    rem-int/2addr v0, v2

    mul-int/lit16 v3, v3, 0xe10

    sub-int/2addr p0, v3

    mul-int/lit8 v2, v0, 0x3c

    sub-int/2addr p0, v2

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcn/baos/watch/sdk/utils/SyncDataUtils;->unitFormat(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\':"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcn/baos/watch/sdk/utils/SyncDataUtils;->unitFormat(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_65
    return-object p0
.end method

.method public static changeSportIntToName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_18

    const/4 v0, 0x4

    if-eq p0, v0, :cond_15

    const/4 v0, 0x5

    if-eq p0, v0, :cond_12

    const-string p0, "\u672a\u77e5\u9879\u76ee"

    goto :goto_20

    :cond_12
    const-string p0, "\u81ea\u7531\u953b\u70bc"

    goto :goto_20

    :cond_15
    const-string p0, "\u6237\u5916\u9a91\u884c"

    goto :goto_20

    :cond_18
    const-string p0, "\u5065\u8d70"

    goto :goto_20

    :cond_1b
    const-string p0, "\u5ba4\u5185\u8dd1"

    goto :goto_20

    :cond_1e
    const-string p0, "\u6237\u5916\u8dd1"

    :goto_20
    return-object p0
.end method

.method public static changeStringToIntAverage(Ljava/lang/String;)I
    .registers 4

    .line 120
    invoke-static {p0}, Lcn/baos/watch/sdk/utils/SyncDataUtils;->changeStringToStringArr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 122
    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_13

    .line 123
    aget-object v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 125
    :cond_13
    array-length p0, p0

    div-int/2addr v1, p0

    return v1
.end method

.method public static changeStringToIntSum(Ljava/lang/String;)I
    .registers 4

    .line 106
    invoke-static {p0}, Lcn/baos/watch/sdk/utils/SyncDataUtils;->changeStringToStringArr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 108
    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_13

    .line 109
    aget-object v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_13
    return v1
.end method

.method public static changeStringToStringArr(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    const-string v0, ","

    .line 97
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringToIntFindMax(Ljava/lang/String;)I
    .registers 4

    .line 134
    invoke-static {p0}, Lcn/baos/watch/sdk/utils/SyncDataUtils;->changeStringToStringArr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 136
    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_1a

    .line 137
    aget-object v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 138
    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1a
    return v1
.end method

.method public static getZeroHourTimeStamp(I)I
    .registers 7

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "localDb->\u4f20\u5165\u65f6\u95f4\u6233:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance v1, Ljava/util/Date;

    int-to-long v2, p0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "localDb->\u4f20\u5165\u65f6\u95f4\u6233\u5bf9\u5e94\u65e5\u671f:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 58
    :try_start_38
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_40
    .catch Ljava/text/ParseException; {:try_start_38 .. :try_end_40} :catch_41

    goto :goto_47

    :catch_41
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    const-wide/16 v0, 0x0

    .line 63
    :goto_47
    div-long/2addr v0, v4

    long-to-int v0, v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "localDb->\u65f6\u95f4\u6233:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " \u8f6c\u6210\u5c0f\u65f6\u6574\u70b9\u65f6\u95f4\u6233:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    return v0
.end method

.method public static getZeroTimeStamp(I)I
    .registers 7

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "localDb->\u4f20\u5165\u65f6\u95f4\u6233:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 27
    new-instance v1, Ljava/util/Date;

    int-to-long v2, p0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "localDb->\u4f20\u5165\u65f6\u95f4\u6233\u5bf9\u5e94\u65e5\u671f:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 30
    :try_start_3a
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_42
    .catch Ljava/text/ParseException; {:try_start_3a .. :try_end_42} :catch_43

    goto :goto_49

    :catch_43
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    const-wide/16 v0, 0x0

    .line 35
    :goto_49
    div-long/2addr v0, v4

    long-to-int v0, v0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "localDb->\u65f6\u95f4\u6233:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " \u8f6c\u6210\u5f53\u59290\u70b9\u65f6\u95f4\u6233:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    return v0
.end method

.method public static unitFormat(I)Ljava/lang/String;
    .registers 3

    if-ltz p0, :cond_1a

    const/16 v0, 0xa

    if-ge p0, v0, :cond_1a

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_29

    .line 272
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_29
    return-object p0
.end method
