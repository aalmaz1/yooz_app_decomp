.class public final Lcom/google/crypto/tink/KeysetHandle$Builder;
.super Ljava/lang/Object;
.source "KeysetHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/KeysetHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;,
        Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;
    }
.end annotation


# instance fields
.field private annotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

.field private buildCalled:Z

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private errorToThrow:Ljava/security/GeneralSecurityException;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->entries:Ljava/util/List;

    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->errorToThrow:Ljava/security/GeneralSecurityException;

    .line 212
    sget-object v0, Lcom/google/crypto/tink/internal/MonitoringAnnotations;->EMPTY:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    iput-object v0, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->annotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->buildCalled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/crypto/tink/KeysetHandle$Builder;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder;->clearPrimary()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/crypto/tink/KeysetHandle$Builder;Ljava/security/GeneralSecurityException;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/KeysetHandle$Builder;->setErrorToThrow(Ljava/security/GeneralSecurityException;)V

    return-void
.end method

.method private static checkIdAssignments(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 292
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 293
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    invoke-static {v1}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$500(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;->access$600()Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;

    move-result-object v2

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 294
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    invoke-static {v1}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$500(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;->access$600()Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;

    move-result-object v2

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 295
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Entries with \'withRandomId()\' may only be followed by other entries with \'withRandomId()\'."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private clearPrimary()V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    const/4 v2, 0x0

    .line 217
    invoke-static {v1, v2}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$302(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;Z)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getNextIdFromBuilderEntry(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;Ljava/util/Set;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builderEntry",
            "idsSoFar"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 318
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$500(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 321
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$500(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;->access$600()Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 322
    invoke-static {p1}, Lcom/google/crypto/tink/KeysetHandle$Builder;->randomIdNotInSet(Ljava/util/Set;)I

    move-result p0

    goto :goto_0

    .line 324
    :cond_0
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$500(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;->access$700(Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;)I

    move-result p0

    :goto_0
    return p0

    .line 319
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "No ID was set (with withFixedId or withRandomId)"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static randomIdNotInSet(Ljava/util/Set;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ids"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 308
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    return v0

    .line 309
    :cond_1
    :goto_1
    invoke-static {}, Lcom/google/crypto/tink/internal/Util;->randKeyId()I

    move-result v0

    goto :goto_0
.end method

.method private setErrorToThrow(Ljava/security/GeneralSecurityException;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorToThrow"
        }
    .end annotation

    .line 303
    iput-object p1, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->errorToThrow:Ljava/security/GeneralSecurityException;

    return-void
.end method


# virtual methods
.method public addEntry(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeysetHandle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .line 224
    invoke-static {p1}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$400(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeysetHandle$Builder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 227
    invoke-static {p1}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$300(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder;->clearPrimary()V

    .line 230
    :cond_0
    invoke-static {p1, p0}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$402(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;Lcom/google/crypto/tink/KeysetHandle$Builder;)Lcom/google/crypto/tink/KeysetHandle$Builder;

    .line 231
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 225
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Entry has already been added to a KeysetHandle.Builder"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()Lcom/google/crypto/tink/KeysetHandle;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 348
    iget-object v1, v0, Lcom/google/crypto/tink/KeysetHandle$Builder;->errorToThrow:Ljava/security/GeneralSecurityException;

    if-nez v1, :cond_a

    .line 352
    iget-boolean v1, v0, Lcom/google/crypto/tink/KeysetHandle$Builder;->buildCalled:Z

    if-nez v1, :cond_9

    const/4 v1, 0x1

    .line 355
    iput-boolean v1, v0, Lcom/google/crypto/tink/KeysetHandle$Builder;->buildCalled:Z

    .line 356
    invoke-static {}, Lcom/google/crypto/tink/proto/Keyset;->newBuilder()Lcom/google/crypto/tink/proto/Keyset$Builder;

    move-result-object v1

    .line 357
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/google/crypto/tink/KeysetHandle$Builder;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 360
    iget-object v3, v0, Lcom/google/crypto/tink/KeysetHandle$Builder;->entries:Ljava/util/List;

    invoke-static {v3}, Lcom/google/crypto/tink/KeysetHandle$Builder;->checkIdAssignments(Ljava/util/List;)V

    .line 361
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 362
    iget-object v4, v0, Lcom/google/crypto/tink/KeysetHandle$Builder;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    .line 363
    invoke-static {v7}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$800(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeyStatus;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 366
    invoke-static {v7, v3}, Lcom/google/crypto/tink/KeysetHandle$Builder;->getNextIdFromBuilderEntry(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;Ljava/util/Set;)I

    move-result v8

    .line 367
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 370
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 375
    invoke-static {v7}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$900(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/Key;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 376
    new-instance v15, Lcom/google/crypto/tink/KeysetHandle$Entry;

    .line 378
    invoke-static {v7}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$900(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/Key;

    move-result-object v10

    invoke-static {v7}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$800(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeyStatus;

    move-result-object v11

    invoke-static {v7}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$300(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Z

    move-result v13

    const/4 v14, 0x0

    move-object v9, v15

    move v12, v8

    invoke-direct/range {v9 .. v14}, Lcom/google/crypto/tink/KeysetHandle$Entry;-><init>(Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/KeyStatus;IZLcom/google/crypto/tink/KeysetHandle$1;)V

    .line 379
    invoke-static {v7}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$900(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/Key;

    move-result-object v9

    invoke-static {v7}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$800(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeyStatus;

    move-result-object v10

    invoke-static {v9, v10, v8}, Lcom/google/crypto/tink/KeysetHandle;->access$1100(Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/KeyStatus;I)Lcom/google/crypto/tink/proto/Keyset$Key;

    move-result-object v9

    goto :goto_2

    .line 381
    :cond_0
    invoke-static {v7}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$1200(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/Parameters;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/crypto/tink/Parameters;->hasIdRequirement()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_1

    :cond_1
    move-object v9, v5

    .line 383
    :goto_1
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;

    move-result-object v10

    .line 384
    invoke-static {v7}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$1200(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/Parameters;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->createKey(Lcom/google/crypto/tink/Parameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/Key;

    move-result-object v15

    .line 385
    new-instance v16, Lcom/google/crypto/tink/KeysetHandle$Entry;

    .line 386
    invoke-static {v7}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$800(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeyStatus;

    move-result-object v11

    invoke-static {v7}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$300(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Z

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v9, v16

    move-object v10, v15

    move v12, v8

    invoke-direct/range {v9 .. v14}, Lcom/google/crypto/tink/KeysetHandle$Entry;-><init>(Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/KeyStatus;IZLcom/google/crypto/tink/KeysetHandle$1;)V

    .line 387
    invoke-static {v7}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$800(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeyStatus;

    move-result-object v9

    invoke-static {v15, v9, v8}, Lcom/google/crypto/tink/KeysetHandle;->access$1100(Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/KeyStatus;I)Lcom/google/crypto/tink/proto/Keyset$Key;

    move-result-object v9

    move-object/from16 v15, v16

    .line 389
    :goto_2
    invoke-virtual {v1, v9}, Lcom/google/crypto/tink/proto/Keyset$Builder;->addKey(Lcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/proto/Keyset$Builder;

    .line 390
    invoke-static {v7}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$300(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Z

    move-result v9

    if-eqz v9, :cond_4

    if-nez v6, :cond_3

    .line 394
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 395
    invoke-static {v7}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$800(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeyStatus;

    move-result-object v7

    sget-object v8, Lcom/google/crypto/tink/KeyStatus;->ENABLED:Lcom/google/crypto/tink/KeyStatus;

    if-ne v7, v8, :cond_2

    goto :goto_3

    .line 396
    :cond_2
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Primary key is not enabled"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 392
    :cond_3
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Two primaries were set"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 399
    :cond_4
    :goto_3
    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 368
    :cond_5
    new-instance v1, Ljava/security/GeneralSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is used twice in the keyset"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 364
    :cond_6
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Key Status not set."

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    if-eqz v6, :cond_8

    .line 404
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/proto/Keyset$Builder;->setPrimaryKeyId(I)Lcom/google/crypto/tink/proto/Keyset$Builder;

    .line 405
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/Keyset;

    .line 406
    invoke-static {v1}, Lcom/google/crypto/tink/KeysetHandle;->access$1300(Lcom/google/crypto/tink/proto/Keyset;)V

    .line 407
    new-instance v3, Lcom/google/crypto/tink/KeysetHandle;

    iget-object v4, v0, Lcom/google/crypto/tink/KeysetHandle$Builder;->annotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    invoke-direct {v3, v1, v2, v4, v5}, Lcom/google/crypto/tink/KeysetHandle;-><init>(Lcom/google/crypto/tink/proto/Keyset;Ljava/util/List;Lcom/google/crypto/tink/internal/MonitoringAnnotations;Lcom/google/crypto/tink/KeysetHandle$1;)V

    return-object v3

    .line 402
    :cond_8
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "No primary was set"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    :cond_9
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "KeysetHandle.Builder#build must only be called once"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 349
    :cond_a
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Cannot build keyset due to error in original"

    iget-object v3, v0, Lcom/google/crypto/tink/KeysetHandle$Builder;->errorToThrow:Ljava/security/GeneralSecurityException;

    invoke-direct {v1, v2, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deleteAt(I)Lcom/google/crypto/tink/KeysetHandle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public getAt(I)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    return-object p1
.end method

.method public removeAt(I)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    return-object p1
.end method

.method public setMonitoringAnnotations(Lcom/google/crypto/tink/internal/MonitoringAnnotations;)Lcom/google/crypto/tink/KeysetHandle$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotations"
        }
    .end annotation

    .line 246
    iput-object p1, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->annotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    return-object p0
.end method

.method public size()I
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
