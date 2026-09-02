.class public final Lcom/google/crypto/tink/aead/AesGcmKey;
.super Lcom/google/crypto/tink/aead/AeadKey;
.source "AesGcmKey.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/aead/AesGcmKey$Builder;
    }
.end annotation


# instance fields
.field private final idRequirement:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

.field private final outputPrefix:Lcom/google/crypto/tink/util/Bytes;

.field private final parameters:Lcom/google/crypto/tink/aead/AesGcmParameters;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/aead/AesGcmParameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V
    .registers 5
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "keyBytes",
            "outputPrefix",
            "idRequirement"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Lcom/google/crypto/tink/aead/AeadKey;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesGcmKey;->parameters:Lcom/google/crypto/tink/aead/AesGcmParameters;

    .line 108
    iput-object p2, p0, Lcom/google/crypto/tink/aead/AesGcmKey;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    .line 109
    iput-object p3, p0, Lcom/google/crypto/tink/aead/AesGcmKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    .line 110
    iput-object p4, p0, Lcom/google/crypto/tink/aead/AesGcmKey;->idRequirement:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/aead/AesGcmParameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;Lcom/google/crypto/tink/aead/AesGcmKey$1;)V
    .registers 6

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/aead/AesGcmKey;-><init>(Lcom/google/crypto/tink/aead/AesGcmParameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/aead/AesGcmKey$Builder;
    .registers 2

    .line 119
    new-instance v0, Lcom/google/crypto/tink/aead/AesGcmKey$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmKey$Builder;-><init>(Lcom/google/crypto/tink/aead/AesGcmKey$1;)V

    return-object v0
.end method


# virtual methods
.method public equalsKey(Lcom/google/crypto/tink/Key;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 150
    instance-of v0, p1, Lcom/google/crypto/tink/aead/AesGcmKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 153
    :cond_6
    check-cast p1, Lcom/google/crypto/tink/aead/AesGcmKey;

    .line 155
    iget-object v0, p1, Lcom/google/crypto/tink/aead/AesGcmKey;->parameters:Lcom/google/crypto/tink/aead/AesGcmParameters;

    iget-object v2, p0, Lcom/google/crypto/tink/aead/AesGcmKey;->parameters:Lcom/google/crypto/tink/aead/AesGcmParameters;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/aead/AesGcmParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p1, Lcom/google/crypto/tink/aead/AesGcmKey;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    iget-object v2, p0, Lcom/google/crypto/tink/aead/AesGcmKey;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    .line 156
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/util/SecretBytes;->equalsSecretBytes(Lcom/google/crypto/tink/util/SecretBytes;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object p1, p1, Lcom/google/crypto/tink/aead/AesGcmKey;->idRequirement:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmKey;->idRequirement:Ljava/lang/Integer;

    .line 157
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    const/4 v1, 0x1

    :cond_27
    return v1
.end method

.method public getIdRequirementOrNull()Ljava/lang/Integer;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmKey;->idRequirement:Ljava/lang/Integer;

    return-object v0
.end method

.method public getKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmKey;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    return-object v0
.end method

.method public getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmKey;->getParameters()Lcom/google/crypto/tink/aead/AesGcmParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/aead/AeadParameters;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmKey;->getParameters()Lcom/google/crypto/tink/aead/AesGcmParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/aead/AesGcmParameters;
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmKey;->parameters:Lcom/google/crypto/tink/aead/AesGcmParameters;

    return-object v0
.end method
