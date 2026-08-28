.class public final Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;
.super Ljava/lang/Object;
.source "HpkeParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/hybrid/HpkeParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private aead:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

.field private kdf:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

.field private kem:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

.field private variant:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->kem:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    .line 126
    iput-object v0, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->kdf:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    .line 127
    iput-object v0, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->aead:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    .line 128
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    iput-object v0, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->variant:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/hybrid/HpkeParameters$1;)V
    .registers 2

    .line 124
    invoke-direct {p0}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/hybrid/HpkeParameters;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->kem:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    if-eqz v0, :cond_38

    .line 160
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->kdf:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    if-eqz v0, :cond_30

    .line 163
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->aead:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    if-eqz v0, :cond_28

    .line 166
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->variant:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    if-eqz v0, :cond_20

    .line 169
    new-instance v0, Lcom/google/crypto/tink/hybrid/HpkeParameters;

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->kem:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    iget-object v3, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->kdf:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    iget-object v4, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->aead:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    iget-object v5, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->variant:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/crypto/tink/hybrid/HpkeParameters;-><init>(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;Lcom/google/crypto/tink/hybrid/HpkeParameters$1;)V

    return-object v0

    .line 167
    :cond_20
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "HPKE variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_28
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "HPKE AEAD parameter is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_30
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "HPKE KDF parameter is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_38
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "HPKE KEM parameter is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAeadId(Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aead"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->aead:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    return-object p0
.end method

.method public setKdfId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kdf"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->kdf:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    return-object p0
.end method

.method public setKemId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kem"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->kem:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    return-object p0
.end method

.method public setVariant(Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variant"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->variant:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    return-object p0
.end method
