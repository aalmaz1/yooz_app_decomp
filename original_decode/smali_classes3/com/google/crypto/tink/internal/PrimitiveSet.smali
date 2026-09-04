.class public final Lcom/google/crypto/tink/internal/PrimitiveSet;
.super Ljava/lang/Object;
.source "PrimitiveSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;,
        Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;
    }
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
.field private final annotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

.field private final entries:Ljava/util/Map;
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

.field private final primary:Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;
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
.method private constructor <init>(Ljava/util/Map;Ljava/util/List;Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;Lcom/google/crypto/tink/internal/MonitoringAnnotations;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "entries",
            "entriesInKeysetOrder",
            "primary",
            "annotations",
            "primitiveClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/crypto/tink/util/Bytes;",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/internal/PrimitiveSet$Entry<",
            "TP;>;>;>;",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/internal/PrimitiveSet$Entry<",
            "TP;>;>;",
            "Lcom/google/crypto/tink/internal/PrimitiveSet$Entry<",
            "TP;>;",
            "Lcom/google/crypto/tink/internal/MonitoringAnnotations;",
            "Ljava/lang/Class<",
            "TP;>;)V"
        }
    .end annotation

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/google/crypto/tink/internal/PrimitiveSet;->entries:Ljava/util/Map;

    .line 206
    iput-object p2, p0, Lcom/google/crypto/tink/internal/PrimitiveSet;->entriesInKeysetOrder:Ljava/util/List;

    .line 207
    iput-object p3, p0, Lcom/google/crypto/tink/internal/PrimitiveSet;->primary:Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;

    .line 208
    iput-object p5, p0, Lcom/google/crypto/tink/internal/PrimitiveSet;->primitiveClass:Ljava/lang/Class;

    .line 209
    iput-object p4, p0, Lcom/google/crypto/tink/internal/PrimitiveSet;->annotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ljava/util/List;Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;Lcom/google/crypto/tink/internal/MonitoringAnnotations;Ljava/lang/Class;Lcom/google/crypto/tink/internal/PrimitiveSet$1;)V
    .locals 0

    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/google/crypto/tink/internal/PrimitiveSet;-><init>(Ljava/util/Map;Ljava/util/List;Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;Lcom/google/crypto/tink/internal/MonitoringAnnotations;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    .line 51
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/internal/PrimitiveSet;->storeEntryInPrimitiveSet(Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public static newBuilder(Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;
    .locals 2
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
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;)",
            "Lcom/google/crypto/tink/internal/PrimitiveSet$Builder<",
            "TP;>;"
        }
    .end annotation

    .line 310
    new-instance v0, Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;-><init>(Ljava/lang/Class;Lcom/google/crypto/tink/internal/PrimitiveSet$1;)V

    return-object v0
.end method

.method private static storeEntryInPrimitiveSet(Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;Ljava/util/Map;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "entry",
            "entries",
            "entriesInKeysetOrder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/internal/PrimitiveSet$Entry<",
            "TP;>;",
            "Ljava/util/Map<",
            "Lcom/google/crypto/tink/util/Bytes;",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/internal/PrimitiveSet$Entry<",
            "TP;>;>;>;",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/internal/PrimitiveSet$Entry<",
            "TP;>;>;)V"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-static {p0}, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->access$000(Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-static {p0}, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->access$000(Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_0
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getAll()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/internal/PrimitiveSet$Entry<",
            "TP;>;>;>;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveSet;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getAllInKeysetOrder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/internal/PrimitiveSet$Entry<",
            "TP;>;>;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveSet;->entriesInKeysetOrder:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()Lcom/google/crypto/tink/internal/MonitoringAnnotations;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveSet;->annotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    return-object v0
.end method

.method public getPrimary()Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/internal/PrimitiveSet$Entry<",
            "TP;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveSet;->primary:Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;

    return-object v0
.end method

.method public getPrimitive([B)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "identifier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/internal/PrimitiveSet$Entry<",
            "TP;>;>;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveSet;->entries:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/crypto/tink/util/Bytes;->copyFrom([B)Lcom/google/crypto/tink/util/Bytes;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getPrimitiveClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TP;>;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveSet;->primitiveClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getRawPrimitives()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/internal/PrimitiveSet$Entry<",
            "TP;>;>;"
        }
    .end annotation

    .line 165
    sget-object v0, Lcom/google/crypto/tink/CryptoFormat;->RAW_PREFIX:[B

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/PrimitiveSet;->getPrimitive([B)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasAnnotations()Z
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveSet;->annotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/MonitoringAnnotations;->toMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
