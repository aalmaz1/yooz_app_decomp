.class public Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;
.super Ljava/lang/Object;
.source "PrimitiveSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/PrimitiveSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private annotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

.field private entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/crypto/tink/util/Bytes;",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/internal/PrimitiveSet$Entry<",
            "TP;>;>;>;"
        }
    .end annotation
.end field

.field private final entriesInKeysetOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/internal/PrimitiveSet$Entry<",
            "TP;>;>;"
        }
    .end annotation
.end field

.field private primary:Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/PrimitiveSet$Entry<",
            "TP;>;"
        }
    .end annotation
.end field

.field private final primitiveClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TP;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primitiveClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TP;>;)V"
        }
    .end annotation

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;->entries:Ljava/util/Map;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;->entriesInKeysetOrder:Ljava/util/List;

    .line 304
    iput-object p1, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;->primitiveClass:Ljava/lang/Class;

    .line 305
    sget-object p1, Lcom/google/crypto/tink/internal/MonitoringAnnotations;->EMPTY:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    iput-object p1, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;->annotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Lcom/google/crypto/tink/internal/PrimitiveSet$1;)V
    .registers 3

    .line 217
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private addEntry(Ljava/lang/Object;Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/proto/Keyset$Key;Z)Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fullPrimitive",
            "key",
            "protoKey",
            "asPrimary"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lcom/google/crypto/tink/Key;",
            "Lcom/google/crypto/tink/proto/Keyset$Key;",
            "Z)",
            "Lcom/google/crypto/tink/internal/PrimitiveSet$Builder<",
            "TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;->entries:Ljava/util/Map;

    if-eqz v0, :cond_5c

    if-eqz p1, :cond_54

    .line 237
    invoke-virtual {p3}, Lcom/google/crypto/tink/proto/Keyset$Key;->getStatus()Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/KeyStatusType;->ENABLED:Lcom/google/crypto/tink/proto/KeyStatusType;

    if-ne v0, v1, :cond_4c

    .line 240
    new-instance v0, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;

    .line 243
    invoke-static {p3}, Lcom/google/crypto/tink/CryptoFormat;->getOutputPrefix(Lcom/google/crypto/tink/proto/Keyset$Key;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/util/Bytes;->copyFrom([B)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v4

    .line 244
    invoke-virtual {p3}, Lcom/google/crypto/tink/proto/Keyset$Key;->getStatus()Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v5

    .line 245
    invoke-virtual {p3}, Lcom/google/crypto/tink/proto/Keyset$Key;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v6

    .line 246
    invoke-virtual {p3}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyId()I

    move-result v7

    .line 247
    invoke-virtual {p3}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyData()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/crypto/tink/proto/KeyData;->getTypeUrl()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    move-object v2, v0

    move-object v3, p1

    move-object v9, p2

    invoke-direct/range {v2 .. v10}, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;-><init>(Ljava/lang/Object;Lcom/google/crypto/tink/util/Bytes;Lcom/google/crypto/tink/proto/KeyStatusType;Lcom/google/crypto/tink/proto/OutputPrefixType;ILjava/lang/String;Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/internal/PrimitiveSet$1;)V

    .line 249
    iget-object p1, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;->entries:Ljava/util/Map;

    iget-object p2, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;->entriesInKeysetOrder:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/internal/PrimitiveSet;->access$200(Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;Ljava/util/Map;Ljava/util/List;)V

    if-eqz p4, :cond_4b

    .line 251
    iget-object p1, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;->primary:Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;

    if-nez p1, :cond_43

    .line 254
    iput-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;->primary:Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;

    goto :goto_4b

    .line 252
    :cond_43
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "you cannot set two primary primitives"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4b
    :goto_4b
    return-object p0

    .line 238
    :cond_4c
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "only ENABLED key is allowed"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 235
    :cond_54
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "`fullPrimitive` must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 232
    :cond_5c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "addEntry cannot be called after build"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addFullPrimitive(Ljava/lang/Object;Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "fullPrimitive",
            "key",
            "protoKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lcom/google/crypto/tink/Key;",
            "Lcom/google/crypto/tink/proto/Keyset$Key;",
            ")",
            "Lcom/google/crypto/tink/internal/PrimitiveSet$Builder<",
            "TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 268
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;->addEntry(Ljava/lang/Object;Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/proto/Keyset$Key;Z)Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addPrimaryFullPrimitive(Ljava/lang/Object;Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "fullPrimitive",
            "key",
            "protoKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lcom/google/crypto/tink/Key;",
            "Lcom/google/crypto/tink/proto/Keyset$Key;",
            ")",
            "Lcom/google/crypto/tink/internal/PrimitiveSet$Builder<",
            "TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 280
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;->addEntry(Ljava/lang/Object;Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/proto/Keyset$Key;Z)Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/crypto/tink/internal/PrimitiveSet;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/internal/PrimitiveSet<",
            "TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;->entries:Ljava/util/Map;

    if-eqz v0, :cond_19

    .line 297
    new-instance v0, Lcom/google/crypto/tink/internal/PrimitiveSet;

    iget-object v2, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;->entries:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;->entriesInKeysetOrder:Ljava/util/List;

    iget-object v4, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;->primary:Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;

    iget-object v5, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;->annotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    iget-object v6, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;->primitiveClass:Ljava/lang/Class;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/crypto/tink/internal/PrimitiveSet;-><init>(Ljava/util/Map;Ljava/util/List;Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;Lcom/google/crypto/tink/internal/MonitoringAnnotations;Ljava/lang/Class;Lcom/google/crypto/tink/internal/PrimitiveSet$1;)V

    const/4 v1, 0x0

    .line 299
    iput-object v1, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;->entries:Ljava/util/Map;

    return-object v0

    .line 294
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build cannot be called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAnnotations(Lcom/google/crypto/tink/internal/MonitoringAnnotations;)Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/internal/MonitoringAnnotations;",
            ")",
            "Lcom/google/crypto/tink/internal/PrimitiveSet$Builder<",
            "TP;>;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;->entries:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 288
    iput-object p1, p0, Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;->annotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    return-object p0

    .line 286
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setAnnotations cannot be called after build"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
