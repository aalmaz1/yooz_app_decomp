.class public Lorg/apache/commons/lang3/EnumUtils;
.super Ljava/lang/Object;
.source "EnumUtils.java"


# static fields
.field private static final CANNOT_STORE_S_S_VALUES_IN_S_BITS:Ljava/lang/String; = "Cannot store %s %s values in %s bits"

.field private static final ENUM_CLASS_MUST_BE_DEFINED:Ljava/lang/String; = "EnumClass must be defined."

.field private static final NULL_ELEMENTS_NOT_PERMITTED:Ljava/lang/String; = "null elements not permitted"

.field private static final S_DOES_NOT_SEEM_TO_BE_AN_ENUM_TYPE:Ljava/lang/String; = "%s does not seem to be an Enum type"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static asEnum(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "EnumClass must be defined."

    .line 308
    invoke-static {p0, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    const-string v0, "%s does not seem to be an Enum type"

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method private static checkBitVectorable(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation

    .line 291
    invoke-static {p0}, Lorg/apache/commons/lang3/EnumUtils;->asEnum(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .line 292
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x40

    if-gt v1, v4, :cond_13

    move v1, v2

    goto :goto_14

    :cond_13
    move v1, v3

    :goto_14
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    const/4 v0, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    const-string v0, "Cannot store %s %s values in %s bits"

    invoke-static {v1, v0, v5}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public static generateBitVector(Ljava/lang/Class;Ljava/lang/Iterable;)J
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;)J"
        }
    .end annotation

    .line 142
    invoke-static {p0}, Lorg/apache/commons/lang3/EnumUtils;->checkBitVectorable(Ljava/lang/Class;)Ljava/lang/Class;

    .line 143
    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    const/4 v2, 0x0

    if-eqz p1, :cond_1d

    const/4 v3, 0x1

    goto :goto_1e

    :cond_1d
    move v3, v2

    :goto_1e
    const-string v4, "null elements not permitted"

    new-array v2, v2, [Ljava/lang/Object;

    .line 146
    invoke-static {v3, v4, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v2, 0x1

    .line 147
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    goto :goto_c

    :cond_2e
    return-wide v0
.end method

.method public static varargs generateBitVector(Ljava/lang/Class;[Ljava/lang/Enum;)J
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;[TE;)J"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 203
    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 204
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/EnumUtils;->generateBitVector(Ljava/lang/Class;Ljava/lang/Iterable;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static generateBitVectors(Ljava/lang/Class;Ljava/lang/Iterable;)[J
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;)[J"
        }
    .end annotation

    .line 169
    invoke-static {p0}, Lorg/apache/commons/lang3/EnumUtils;->asEnum(Ljava/lang/Class;)Ljava/lang/Class;

    .line 170
    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 172
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    const/4 v3, 0x0

    if-eqz v1, :cond_1f

    goto :goto_20

    :cond_1f
    move v2, v3

    :goto_20
    const-string v4, "null elements not permitted"

    new-array v3, v3, [Ljava/lang/Object;

    .line 173
    invoke-static {v2, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 174
    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 176
    :cond_2b
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Enum;

    array-length p0, p0

    sub-int/2addr p0, v2

    div-int/lit8 p0, p0, 0x40

    add-int/2addr p0, v2

    new-array p0, p0, [J

    .line 177
    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 178
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    div-int/lit8 v1, v1, 0x40

    aget-wide v2, p0, v1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    rem-int/lit8 v0, v0, 0x40

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    aput-wide v2, p0, v1

    goto :goto_3c

    .line 180
    :cond_5d
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([J)V

    return-object p0
.end method

.method public static varargs generateBitVectors(Ljava/lang/Class;[Ljava/lang/Enum;)[J
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;[TE;)[J"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 225
    invoke-static {p0}, Lorg/apache/commons/lang3/EnumUtils;->asEnum(Ljava/lang/Class;)Ljava/lang/Class;

    .line 226
    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 227
    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 228
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 229
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Enum;

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    div-int/lit8 p0, p0, 0x40

    add-int/lit8 p0, p0, 0x1

    new-array p0, p0, [J

    .line 230
    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 231
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    div-int/lit8 v1, v1, 0x40

    aget-wide v2, p0, v1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    rem-int/lit8 v0, v0, 0x40

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    aput-wide v2, p0, v1

    goto :goto_20

    .line 233
    :cond_41
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([J)V

    return-object p0
.end method

.method public static getEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 117
    :cond_4
    :try_start_4
    invoke-static {p0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    return-object v0
.end method

.method public static getEnumList(Ljava/lang/Class;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getEnumMap(Ljava/lang/Class;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TE;>;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 59
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Enum;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_1b

    aget-object v3, p0, v2

    .line 60
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1b
    return-object v0
.end method

.method public static isValidEnum(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 94
    :cond_4
    :try_start_4
    invoke-static {p0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_7} :catch_9

    const/4 p0, 0x1

    return p0

    :catch_9
    return v0
.end method

.method public static processBitVector(Ljava/lang/Class;J)Ljava/util/EnumSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;J)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 251
    invoke-static {p0}, Lorg/apache/commons/lang3/EnumUtils;->checkBitVectorable(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 252
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/EnumUtils;->processBitVectors(Ljava/lang/Class;[J)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0
.end method

.method public static varargs processBitVectors(Ljava/lang/Class;[J)Ljava/util/EnumSet;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;[J)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 269
    invoke-static {p0}, Lorg/apache/commons/lang3/EnumUtils;->asEnum(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 270
    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object p1

    .line 271
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([J)V

    .line 272
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Enum;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v1, :cond_43

    aget-object v3, p0, v2

    .line 273
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    div-int/lit8 v4, v4, 0x40

    .line 274
    array-length v5, p1

    if-ge v4, v5, :cond_40

    aget-wide v4, p1, v4

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    rem-int/lit8 v6, v6, 0x40

    const-wide/16 v7, 0x1

    shl-long v6, v7, v6

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_40

    .line 275
    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_43
    return-object v0
.end method
