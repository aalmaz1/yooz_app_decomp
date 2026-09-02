.class public Lio/flutter/plugin/common/JSONUtil;
.super Ljava/lang/Object;
.source "JSONUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unwrap(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 23
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7d

    if-nez p0, :cond_d

    goto/16 :goto_7d

    .line 26
    :cond_d
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_7c

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_7c

    instance-of v0, p0, Ljava/lang/Character;

    if-nez v0, :cond_7c

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_7c

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_7c

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_7c

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_7c

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_7c

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_32

    goto :goto_7c

    .line 38
    :cond_32
    :try_start_32
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_53

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    check-cast p0, Lorg/json/JSONArray;

    const/4 v2, 0x0

    .line 41
    :goto_3e
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_52

    .line 42
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lio/flutter/plugin/common/JSONUtil;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    :cond_52
    return-object v0

    .line 46
    :cond_53
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_7b

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    check-cast p0, Lorg/json/JSONObject;

    .line 49
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 50
    :goto_62
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 51
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 52
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lio/flutter/plugin/common/JSONUtil;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_79} :catch_7b

    goto :goto_62

    :cond_7a
    return-object v0

    :catch_7b
    :cond_7b
    return-object v1

    :cond_7c
    :goto_7c
    return-object p0

    :cond_7d
    :goto_7d
    return-object v1
.end method

.method public static wrap(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    if-nez p0, :cond_5

    .line 65
    sget-object p0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    return-object p0

    .line 67
    :cond_5
    instance-of v0, p0, Lorg/json/JSONArray;

    if-nez v0, :cond_d0

    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_f

    goto/16 :goto_d0

    .line 70
    :cond_f
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    return-object p0

    .line 74
    :cond_18
    :try_start_18
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_3a

    .line 75
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 76
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugin/common/JSONUtil;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_27

    :cond_39
    return-object v0

    .line 78
    :cond_3a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 79
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 80
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    :goto_4e
    if-ge v2, v1, :cond_5e

    .line 81
    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lio/flutter/plugin/common/JSONUtil;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :cond_5e
    return-object v0

    .line 84
    :cond_5f
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_91

    .line 85
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 86
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_72
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 87
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugin/common/JSONUtil;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_72

    :cond_90
    return-object v0

    .line 90
    :cond_91
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_ce

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_ce

    instance-of v0, p0, Ljava/lang/Character;

    if-nez v0, :cond_ce

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_ce

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_ce

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_ce

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_ce

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_ce

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_b6

    goto :goto_ce

    .line 101
    :cond_b6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_ce} :catch_cf

    :cond_ce
    :goto_ce
    return-object p0

    :catch_cf
    :cond_cf
    const/4 p0, 0x0

    :cond_d0
    :goto_d0
    return-object p0
.end method
