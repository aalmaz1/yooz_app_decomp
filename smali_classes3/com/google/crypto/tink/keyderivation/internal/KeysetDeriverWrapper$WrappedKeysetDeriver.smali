.class Lcom/google/crypto/tink/keyderivation/internal/KeysetDeriverWrapper$WrappedKeysetDeriver;
.super Ljava/lang/Object;
.source "KeysetDeriverWrapper.java"

# interfaces
.implements Lcom/google/crypto/tink/keyderivation/KeysetDeriver;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/keyderivation/internal/KeysetDeriverWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedKeysetDeriver"
.end annotation


# instance fields
.field private final primitiveSet:Lcom/google/crypto/tink/internal/PrimitiveSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/PrimitiveSet<",
            "Lcom/google/crypto/tink/keyderivation/internal/KeyDeriver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/internal/PrimitiveSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primitiveSet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/internal/PrimitiveSet<",
            "Lcom/google/crypto/tink/keyderivation/internal/KeyDeriver;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/crypto/tink/keyderivation/internal/KeysetDeriverWrapper$WrappedKeysetDeriver;->primitiveSet:Lcom/google/crypto/tink/internal/PrimitiveSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/internal/PrimitiveSet;Lcom/google/crypto/tink/keyderivation/internal/KeysetDeriverWrapper$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/keyderivation/internal/KeysetDeriverWrapper$WrappedKeysetDeriver;-><init>(Lcom/google/crypto/tink/internal/PrimitiveSet;)V

    return-void
.end method

.method private static deriveAndGetEntry([BLcom/google/crypto/tink/internal/PrimitiveSet$Entry;I)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "salt",
            "entry",
            "primaryKeyId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/crypto/tink/internal/PrimitiveSet$Entry<",
            "Lcom/google/crypto/tink/keyderivation/internal/KeyDeriver;",
            ">;I)",
            "Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->getFullPrimitive()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/keyderivation/internal/KeyDeriver;

    if-eqz v0, :cond_1

    .line 57
    invoke-interface {v0, p0}, Lcom/google/crypto/tink/keyderivation/internal/KeyDeriver;->deriveKey([B)Lcom/google/crypto/tink/Key;

    move-result-object p0

    .line 58
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->importKey(Lcom/google/crypto/tink/Key;)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    move-result-object p0

    .line 59
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->getKeyId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->withFixedId(I)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    .line 60
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->getKeyId()I

    move-result p1

    if-ne p1, p2, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->makePrimary()Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    :cond_0
    return-object p0

    .line 54
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Primitive set has non-full primitives -- this is probably a bug"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public deriveKeyset([B)Lcom/google/crypto/tink/KeysetHandle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "salt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 68
    invoke-static {}, Lcom/google/crypto/tink/KeysetHandle;->newBuilder()Lcom/google/crypto/tink/KeysetHandle$Builder;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/google/crypto/tink/keyderivation/internal/KeysetDeriverWrapper$WrappedKeysetDeriver;->primitiveSet:Lcom/google/crypto/tink/internal/PrimitiveSet;

    invoke-virtual {v1}, Lcom/google/crypto/tink/internal/PrimitiveSet;->getAllInKeysetOrder()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;

    .line 70
    iget-object v3, p0, Lcom/google/crypto/tink/keyderivation/internal/KeysetDeriverWrapper$WrappedKeysetDeriver;->primitiveSet:Lcom/google/crypto/tink/internal/PrimitiveSet;

    invoke-virtual {v3}, Lcom/google/crypto/tink/internal/PrimitiveSet;->getPrimary()Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->getKeyId()I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/google/crypto/tink/keyderivation/internal/KeysetDeriverWrapper$WrappedKeysetDeriver;->deriveAndGetEntry([BLcom/google/crypto/tink/internal/PrimitiveSet$Entry;I)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/KeysetHandle$Builder;->addEntry(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeysetHandle$Builder;

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v0}, Lcom/google/crypto/tink/KeysetHandle$Builder;->build()Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p1

    return-object p1
.end method
