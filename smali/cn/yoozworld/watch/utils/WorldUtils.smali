.class public Lcn/yoozworld/watch/utils/WorldUtils;
.super Ljava/lang/Object;
.source "WorldUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWorldList(Landroid/content/Context;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcn/baos/watch/sdk/entitiy/WorldEntity;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 93
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 94
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "wroldTimeData.json"

    invoke-virtual {p0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    const-string v3, "UTF-8"

    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_bb
    .catchall {:try_start_6 .. :try_end_17} :catchall_b8

    .line 95
    :try_start_17
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_b3
    .catchall {:try_start_17 .. :try_end_1c} :catchall_b1

    .line 97
    :try_start_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    :goto_21
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 103
    :cond_2b
    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>>>banks object is->"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 105
    :goto_4f
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_a8

    .line 106
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 107
    new-instance v5, Lcn/baos/watch/sdk/entitiy/WorldEntity;

    invoke-direct {v5}, Lcn/baos/watch/sdk/entitiy/WorldEntity;-><init>()V

    const-string v6, "contryCn"

    .line 108
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcn/baos/watch/sdk/entitiy/WorldEntity;->contryCn:Ljava/lang/String;

    const-string v6, "cityEn"

    .line 109
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcn/baos/watch/sdk/entitiy/WorldEntity;->cityEn:Ljava/lang/String;

    const-string v6, "cityCn"

    .line 110
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcn/baos/watch/sdk/entitiy/WorldEntity;->cityCn:Ljava/lang/String;

    const-string v6, "contryEn"

    .line 111
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcn/baos/watch/sdk/entitiy/WorldEntity;->contryEn:Ljava/lang/String;

    const-string v6, "secondsFromGMT"

    .line 112
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lcn/baos/watch/sdk/entitiy/WorldEntity;->secondsFromGMT:Ljava/lang/Integer;

    const-string v6, "GMT"

    .line 113
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcn/baos/watch/sdk/entitiy/WorldEntity;->gMT:Ljava/lang/String;

    const-string v6, "continentsCn"

    .line 114
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcn/baos/watch/sdk/entitiy/WorldEntity;->continentsCn:Ljava/lang/String;

    const-string v6, "continentsEn"

    .line 115
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcn/baos/watch/sdk/entitiy/WorldEntity;->continentsEn:Ljava/lang/String;

    .line 116
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_a5} :catch_af
    .catchall {:try_start_1c .. :try_end_a5} :catchall_de

    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 123
    :cond_a8
    :goto_a8
    :try_start_a8
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ab} :catch_ab

    .line 126
    :catch_ab
    :try_start_ab
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ae} :catch_dd

    goto :goto_dd

    :catch_af
    move-exception v1

    goto :goto_bf

    :catchall_b1
    move-exception v0

    goto :goto_e0

    :catch_b3
    move-exception p0

    move-object v7, v1

    move-object v1, p0

    move-object p0, v7

    goto :goto_bf

    :catchall_b8
    move-exception v0

    move-object v2, v1

    goto :goto_e0

    :catch_bb
    move-exception p0

    move-object v2, v1

    move-object v1, p0

    move-object p0, v2

    .line 119
    :goto_bf
    :try_start_bf
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>>>read json error->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_dc
    .catchall {:try_start_bf .. :try_end_dc} :catchall_de

    goto :goto_a8

    :catch_dd
    :goto_dd
    return-object v0

    :catchall_de
    move-exception v0

    move-object v1, p0

    .line 123
    :goto_e0
    :try_start_e0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_e3} :catch_e3

    .line 126
    :catch_e3
    :try_start_e3
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e6} :catch_e6

    .line 128
    :catch_e6
    throw v0
.end method

.method public static getWorldTime(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    .line 42
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 43
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "wroldTimeData.json"

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_c9
    .catchall {:try_start_1 .. :try_end_12} :catchall_c4

    .line 44
    :try_start_12
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_bf
    .catchall {:try_start_12 .. :try_end_17} :catchall_ba

    .line 46
    :try_start_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    :goto_1c
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 52
    :cond_26
    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>>>banks object is->"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 58
    :goto_4f
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_a8

    .line 59
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 60
    new-instance v5, Lcn/baos/watch/sdk/entitiy/WorldEntity;

    invoke-direct {v5}, Lcn/baos/watch/sdk/entitiy/WorldEntity;-><init>()V

    const-string v6, "contryCn"

    .line 61
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcn/baos/watch/sdk/entitiy/WorldEntity;->contryCn:Ljava/lang/String;

    const-string v6, "cityEn"

    .line 62
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcn/baos/watch/sdk/entitiy/WorldEntity;->cityEn:Ljava/lang/String;

    const-string v6, "cityCn"

    .line 63
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcn/baos/watch/sdk/entitiy/WorldEntity;->cityCn:Ljava/lang/String;

    const-string v6, "contryEn"

    .line 64
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcn/baos/watch/sdk/entitiy/WorldEntity;->contryEn:Ljava/lang/String;

    const-string v6, "secondsFromGMT"

    .line 65
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lcn/baos/watch/sdk/entitiy/WorldEntity;->secondsFromGMT:Ljava/lang/Integer;

    const-string v6, "GMT"

    .line 66
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcn/baos/watch/sdk/entitiy/WorldEntity;->gMT:Ljava/lang/String;

    const-string v6, "continentsCn"

    .line 67
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcn/baos/watch/sdk/entitiy/WorldEntity;->continentsCn:Ljava/lang/String;

    const-string v6, "continentsEn"

    .line 68
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcn/baos/watch/sdk/entitiy/WorldEntity;->continentsEn:Ljava/lang/String;

    .line 69
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    .line 71
    :cond_a8
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_b1} :catch_b8
    .catchall {:try_start_17 .. :try_end_b1} :catchall_f3

    .line 77
    :try_start_b1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b4} :catch_b4

    .line 80
    :catch_b4
    :try_start_b4
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b7} :catch_f2

    goto :goto_f2

    :catch_b8
    move-exception v0

    goto :goto_cd

    :catchall_ba
    move-exception p0

    move-object v7, v0

    move-object v0, p0

    move-object p0, v7

    goto :goto_f4

    :catch_bf
    move-exception p0

    move-object v7, v0

    move-object v0, p0

    move-object p0, v7

    goto :goto_cd

    :catchall_c4
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    goto :goto_f4

    :catch_c9
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    .line 73
    :goto_cd
    :try_start_cd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>>>read json error->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ea
    .catchall {:try_start_cd .. :try_end_ea} :catchall_f3

    .line 77
    :try_start_ea
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_ed} :catch_ed

    .line 80
    :catch_ed
    :try_start_ed
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f0} :catch_f0

    :catch_f0
    const-string v0, ""

    :catch_f2
    :goto_f2
    return-object v0

    :catchall_f3
    move-exception v0

    .line 77
    :goto_f4
    :try_start_f4
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_f7} :catch_f7

    .line 80
    :catch_f7
    :try_start_f7
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_fa} :catch_fa

    .line 82
    :catch_fa
    throw v0
.end method

.method public static isLocationEnabled(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "location"

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const-string v0, "gps"

    .line 34
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "network"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method
