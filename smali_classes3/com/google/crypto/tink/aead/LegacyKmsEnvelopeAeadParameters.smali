.class public final Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;
.super Lcom/google/crypto/tink/aead/AeadParameters;
.source "LegacyKmsEnvelopeAeadParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Builder;,
        Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;,
        Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;
    }
.end annotation


# instance fields
.field private final dekParametersForNewKeys:Lcom/google/crypto/tink/aead/AeadParameters;

.field private final dekParsingStrategy:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

.field private final kekUri:Ljava/lang/String;

.field private final variant:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;Ljava/lang/String;Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;Lcom/google/crypto/tink/aead/AeadParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "variant",
            "kekUri",
            "dekParsingStrategy",
            "dekParametersForNewKeys"
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Lcom/google/crypto/tink/aead/AeadParameters;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->variant:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;

    .line 143
    iput-object p2, p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->kekUri:Ljava/lang/String;

    .line 144
    iput-object p3, p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->dekParsingStrategy:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    .line 145
    iput-object p4, p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->dekParametersForNewKeys:Lcom/google/crypto/tink/aead/AeadParameters;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;Ljava/lang/String;Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;Lcom/google/crypto/tink/aead/AeadParameters;Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$1;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;-><init>(Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;Ljava/lang/String;Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;Lcom/google/crypto/tink/aead/AeadParameters;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Builder;
    .locals 2

    .line 253
    new-instance v0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Builder;-><init>(Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$1;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 291
    instance-of v0, p1, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 294
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;

    .line 295
    iget-object v0, p1, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->dekParsingStrategy:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    iget-object v2, p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->dekParsingStrategy:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->dekParametersForNewKeys:Lcom/google/crypto/tink/aead/AeadParameters;

    iget-object v2, p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->dekParametersForNewKeys:Lcom/google/crypto/tink/aead/AeadParameters;

    .line 296
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->kekUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->kekUri:Ljava/lang/String;

    .line 297
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->variant:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;

    iget-object v0, p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->variant:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;

    .line 298
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getDekParametersForNewKeys()Lcom/google/crypto/tink/aead/AeadParameters;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->dekParametersForNewKeys:Lcom/google/crypto/tink/aead/AeadParameters;

    return-object v0
.end method

.method public getDekParsingStrategy()Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->dekParsingStrategy:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    return-object v0
.end method

.method public getKekUri()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->kekUri:Ljava/lang/String;

    return-object v0
.end method

.method public getVariant()Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->variant:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->variant:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 303
    const-class v2, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->kekUri:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->dekParsingStrategy:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->dekParametersForNewKeys:Lcom/google/crypto/tink/aead/AeadParameters;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->variant:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LegacyKmsEnvelopeAead Parameters (kekUri: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->kekUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dekParsingStrategy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->dekParsingStrategy:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dekParametersForNewKeys: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->dekParametersForNewKeys:Lcom/google/crypto/tink/aead/AeadParameters;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", variant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->variant:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
