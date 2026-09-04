.class public Lcn/baos/watch/sdk/utils/W100Utils;
.super Ljava/lang/Object;
.source "W100Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bin10T2Dec(I)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :goto_0
    if-eqz p0, :cond_0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v2, p0, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    div-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static bin2Dec(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, ""

    .line 75
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v0

    .line 76
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 77
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x32

    if-gt v2, v3, :cond_0

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    mul-int/lit8 v1, v1, 0x2

    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method

.method public static final byte2hex([B)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, " 0x"

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 264
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 265
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string v3, "0"

    .line 267
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 269
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final byte2hex([BI)Ljava/lang/String;
    .locals 5

    .line 277
    array-length v0, p0

    if-gt v0, p1, :cond_0

    .line 278
    array-length p1, p0

    :cond_0
    if-eqz p0, :cond_3

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 290
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 294
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 283
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument b ( byte array ) is null! "

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 6

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_3

    .line 235
    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 239
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 240
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 241
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 242
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2

    .line 136
    const-class v0, Lcn/baos/watch/sdk/utils/W100Utils;

    monitor-enter v0

    .line 137
    :try_start_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 138
    check-cast p0, Landroid/app/Activity;

    monitor-exit v0

    return-object p0

    .line 140
    :cond_0
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 141
    check-cast p0, Landroid/content/ContextWrapper;

    .line 142
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/baos/watch/sdk/utils/W100Utils;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 144
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 146
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getAppMark(I)Lcn/baos/watch/sdk/entitiy/AppMarekEntity;
    .locals 6

    .line 27
    invoke-static {p0}, Lcn/baos/watch/sdk/utils/W100Utils;->bin10T2Dec(I)Ljava/lang/String;

    move-result-object p0

    .line 29
    new-instance v0, Lcn/baos/watch/sdk/entitiy/AppMarekEntity;

    invoke-direct {v0}, Lcn/baos/watch/sdk/entitiy/AppMarekEntity;-><init>()V

    if-eqz p0, :cond_7

    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 31
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-lez v1, :cond_7

    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_0

    add-int/lit8 v3, v1, -0x1

    .line 34
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v1, -0x1

    .line 36
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 38
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v2, :cond_1

    .line 40
    iput v4, v0, Lcn/baos/watch/sdk/entitiy/AppMarekEntity;->isVideoCtrl:I

    :cond_1
    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    .line 43
    iput v4, v0, Lcn/baos/watch/sdk/entitiy/AppMarekEntity;->isMeteorological:I

    :cond_2
    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    .line 46
    iput v4, v0, Lcn/baos/watch/sdk/entitiy/AppMarekEntity;->isBloodSugar:I

    :cond_3
    const/4 v5, 0x3

    if-ne v2, v5, :cond_4

    .line 49
    iput v4, v0, Lcn/baos/watch/sdk/entitiy/AppMarekEntity;->isBodyTemperature:I

    :cond_4
    const/4 v5, 0x4

    if-ne v2, v5, :cond_5

    .line 52
    iput v4, v0, Lcn/baos/watch/sdk/entitiy/AppMarekEntity;->isBreathingRate:I

    :cond_5
    const/4 v5, 0x5

    if-ne v2, v5, :cond_6

    .line 55
    iput v4, v0, Lcn/baos/watch/sdk/entitiy/AppMarekEntity;->isMyFriends:I

    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "app_id_mask----"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/utils/LogUtil;->e(Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_7
    return-object v0
.end method

.method public static getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    .line 168
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-string p0, "unknown"

    :goto_1
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getAppProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 183
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "activity"

    .line 185
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 187
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    .line 188
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 189
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_0

    .line 190
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static getLocalVersion(Landroid/content/Context;)I
    .locals 3

    const-string v0, "\u672c\u8f6f\u4ef6\u7684\u7248\u672c\u53f7\uff1a"

    const/4 v1, 0x0

    .line 92
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 93
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 95
    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 96
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 98
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public static getLocalVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "\u672c\u8f6f\u4ef6\u7684\u7248\u672c\u540d\uff1a"

    const-string v1, ""

    .line 109
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 110
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 112
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 113
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 115
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public static hexTobyte(Ljava/lang/String;)B
    .locals 1

    const/16 v0, 0x10

    .line 333
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public static hexTobytes(Ljava/lang/String;)[B
    .locals 6

    .line 340
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 343
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    .line 345
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v1, 0x2

    .line 346
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x10

    invoke-static {v1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    move v2, v3

    move v1, v4

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static int2bytes(I)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/16 v1, 0x100

    const/4 v2, 0x1

    if-ge p0, v1, :cond_0

    int-to-byte p0, p0

    aput-byte p0, v0, v2

    goto :goto_0

    :cond_0
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    shr-int/lit8 p0, p0, 0x8

    const/4 v1, 0x0

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    :goto_0
    return-object v0
.end method

.method public static isForeground(Landroid/app/Activity;)Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method public static isForeground(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "-?[0-9]+\\.?[0-9]*"

    .line 301
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 302
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 303
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "\u5bf9\u8c61\u4e3a\u7a7a"

    return-object p0

    .line 131
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toStringFanshe(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "\u5bf9\u8c61\u4e3a\u7a7a"

    return-object p0

    .line 154
    :cond_0
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->SHORT_PREFIX_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
