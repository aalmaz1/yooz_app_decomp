.class public Lcn/baos/watch/sdk/utils/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentDeviceConfig(Landroid/content/Context;)Lcn/baos/watch/sdk/utils/DeviceBean;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "DEVICE_CONFIG_ALL"

    .line 38
    invoke-static {p0, v1}, Lcn/baos/watch/sdk/utils/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEVICE_CONFIG_WATCH"

    .line 39
    invoke-static {p0, v2}, Lcn/baos/watch/sdk/utils/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 40
    invoke-static {v1}, Lcom/inuker/bluetooth/library/utils/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_72

    invoke-static {p0}, Lcom/inuker/bluetooth/library/utils/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_72

    .line 42
    :cond_1a
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcn/baos/watch/w100/messages/Device_base_info;

    invoke-virtual {v2, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/baos/watch/w100/messages/Device_base_info;

    .line 43
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcn/baos/watch/sdk/utils/JsonUtils$2;

    invoke-direct {v3}, Lcn/baos/watch/sdk/utils/JsonUtils$2;-><init>()V

    invoke-virtual {v3}, Lcn/baos/watch/sdk/utils/JsonUtils$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_77

    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_77

    if-eqz p0, :cond_77

    .line 45
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/baos/watch/sdk/utils/DeviceBean;

    if-eqz v2, :cond_49

    .line 46
    iget-object v3, p0, Lcn/baos/watch/w100/messages/Device_base_info;->device_model:Ljava/lang/String;

    invoke-static {v3}, Lcom/inuker/bluetooth/library/utils/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, v2, Lcn/baos/watch/sdk/utils/DeviceBean;->name:Ljava/lang/String;

    .line 47
    invoke-static {v3}, Lcom/inuker/bluetooth/library/utils/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcn/baos/watch/w100/messages/Device_base_info;->device_model:Ljava/lang/String;

    iget-object v4, v2, Lcn/baos/watch/sdk/utils/DeviceBean;->name:Ljava/lang/String;

    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6f} :catch_73

    if-eqz v3, :cond_49

    return-object v2

    :cond_72
    :goto_72
    return-object v0

    :catch_73
    move-exception p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_77
    return-object v0
.end method

.method public static readDeviceJson(Landroid/content/Context;)V
    .registers 5

    .line 20
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "device_config.json"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 21
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    :goto_1b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 27
    :cond_25
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 28
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 29
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/baos/watch/sdk/utils/JsonUtils$1;

    invoke-direct {v2}, Lcn/baos/watch/sdk/utils/JsonUtils$1;-><init>()V

    invoke-virtual {v2}, Lcn/baos/watch/sdk/utils/JsonUtils$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "DEVICE_CONFIG_ALL"

    .line 30
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcn/baos/watch/sdk/utils/SharePreferenceUtils;->saveStringByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_51} :catch_52

    goto :goto_56

    :catch_52
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_56
    return-void
.end method
