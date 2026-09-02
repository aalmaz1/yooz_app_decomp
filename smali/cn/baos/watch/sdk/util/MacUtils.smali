.class public Lcn/baos/watch/sdk/util/MacUtils;
.super Ljava/lang/Object;
.source "MacUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bleMacToBtMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const-string v0, ":"

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MacUtils--start-->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 18
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "MacUtils--end-->"

    const-string v3, ""

    if-nez v1, :cond_d5

    const-string v1, "FB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 20
    :try_start_26
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 21
    array-length v1, p0

    const/4 v4, 0x6

    if-ne v1, v4, :cond_d5

    const/4 v1, 0x0

    .line 22
    aget-object v4, p0, v1

    invoke-static {v4}, Lcn/baos/watch/sdk/util/FileUtils;->decodeHEX(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x5

    .line 23
    aget-object v6, p0, v5

    invoke-static {v6}, Lcn/baos/watch/sdk/util/FileUtils;->decodeHEX(Ljava/lang/String;)I

    move-result v6
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3c} :catch_d1

    const/4 v7, 0x1

    add-int/2addr v4, v7

    add-int/2addr v6, v7

    const/16 v8, 0xff

    if-le v4, v8, :cond_44

    move v4, v1

    :cond_44
    if-le v6, v8, :cond_47

    move v6, v1

    .line 35
    :cond_47
    :try_start_47
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4b} :catch_7d

    .line 36
    :try_start_4b
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4f} :catch_7a

    .line 37
    :try_start_4f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_53} :catch_78

    const-string v9, "0"

    if-ne v8, v7, :cond_64

    .line 38
    :try_start_57
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 40
    :cond_64
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v7, :cond_83

    .line 41
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_77} :catch_78

    goto :goto_83

    :catch_78
    move-exception v8

    goto :goto_80

    :catch_7a
    move-exception v8

    move-object v6, v3

    goto :goto_80

    :catch_7d
    move-exception v8

    move-object v4, v3

    move-object v6, v4

    .line 44
    :goto_80
    :try_start_80
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    :cond_83
    :goto_83
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p0, v1

    .line 47
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p0, v5

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    :goto_94
    array-length v5, p0

    if-ge v1, v5, :cond_b4

    .line 50
    aget-object v5, p0, v1

    .line 51
    array-length v6, p0

    sub-int/2addr v6, v7

    if-eq v1, v6, :cond_ae

    .line 52
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 54
    :cond_ae
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_94

    .line 56
    :cond_b4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_d0} :catch_d1

    return-object p0

    :catch_d1
    move-exception p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    :cond_d5
    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-object v3
.end method
