.class public final Lcom/google/crypto/tink/internal/MonitoringKeysetInfo$Builder;
.super Ljava/lang/Object;
.source "MonitoringKeysetInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/MonitoringKeysetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private builderAnnotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

.field private builderEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/crypto/tink/internal/MonitoringKeysetInfo$Entry;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private builderPrimaryKeyId:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/MonitoringKeysetInfo$Builder;->builderEntries:Ljava/util/ArrayList;

    .line 101
    sget-object v0, Lcom/google/crypto/tink/internal/MonitoringAnnotations;->EMPTY:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    iput-object v0, p0, Lcom/google/crypto/tink/internal/MonitoringKeysetInfo$Builder;->builderAnnotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/google/crypto/tink/internal/MonitoringKeysetInfo$Builder;->builderPrimaryKeyId:Ljava/lang/Integer;

    return-void
.end method

.method private isKeyIdInEntries(I)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyId"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MonitoringKeysetInfo$Builder;->builderEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/internal/MonitoringKeysetInfo$Entry;

    .line 133
    invoke-virtual {v1}, Lcom/google/crypto/tink/internal/MonitoringKeysetInfo$Entry;->getKeyId()I

    move-result v1

    if-ne v1, p1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addEntry(Lcom/google/crypto/tink/KeyStatus;ILjava/lang/String;Ljava/lang/String;)Lcom/google/crypto/tink/internal/MonitoringKeysetInfo$Builder;
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "status",
            "keyId",
            "keyType",
            "keyPrefix"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MonitoringKeysetInfo$Builder;->builderEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    .line 118
    new-instance v7, Lcom/google/crypto/tink/internal/MonitoringKeysetInfo$Entry;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/crypto/tink/internal/MonitoringKeysetInfo$Entry;-><init>(Lcom/google/crypto/tink/KeyStatus;ILjava/lang/String;Ljava/lang/String;Lcom/google/crypto/tink/internal/MonitoringKeysetInfo$1;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 116
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "addEntry cannot be called after build()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()Lcom/google/crypto/tink/internal/MonitoringKeysetInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MonitoringKeysetInfo$Builder;->builderEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_2e

    .line 145
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MonitoringKeysetInfo$Builder;->builderPrimaryKeyId:Ljava/lang/Integer;

    if-eqz v0, :cond_1b

    .line 148
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/internal/MonitoringKeysetInfo$Builder;->isKeyIdInEntries(I)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_1b

    .line 149
    :cond_13
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "primary key ID is not present in entries"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1b
    :goto_1b
    new-instance v0, Lcom/google/crypto/tink/internal/MonitoringKeysetInfo;

    iget-object v1, p0, Lcom/google/crypto/tink/internal/MonitoringKeysetInfo$Builder;->builderAnnotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    iget-object v2, p0, Lcom/google/crypto/tink/internal/MonitoringKeysetInfo$Builder;->builderEntries:Ljava/util/ArrayList;

    .line 155
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/google/crypto/tink/internal/MonitoringKeysetInfo$Builder;->builderPrimaryKeyId:Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/crypto/tink/internal/MonitoringKeysetInfo;-><init>(Lcom/google/crypto/tink/internal/MonitoringAnnotations;Ljava/util/List;Ljava/lang/Integer;Lcom/google/crypto/tink/internal/MonitoringKeysetInfo$1;)V

    .line 160
    iput-object v4, p0, Lcom/google/crypto/tink/internal/MonitoringKeysetInfo$Builder;->builderEntries:Ljava/util/ArrayList;

    return-object v0

    .line 143
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot call build() twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAnnotations(Lcom/google/crypto/tink/internal/MonitoringAnnotations;)Lcom/google/crypto/tink/internal/MonitoringKeysetInfo$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotations"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MonitoringKeysetInfo$Builder;->builderEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 109
    iput-object p1, p0, Lcom/google/crypto/tink/internal/MonitoringKeysetInfo$Builder;->builderAnnotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    return-object p0

    .line 107
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setAnnotations cannot be called after build()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPrimaryKeyId(I)Lcom/google/crypto/tink/internal/MonitoringKeysetInfo$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primaryKeyId"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MonitoringKeysetInfo$Builder;->builderEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/internal/MonitoringKeysetInfo$Builder;->builderPrimaryKeyId:Ljava/lang/Integer;

    return-object p0

    .line 125
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setPrimaryKeyId cannot be called after build()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
