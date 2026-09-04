.class public final Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;
.super Ljava/lang/Object;
.source "LegacyKmsEnvelopeAeadParameters.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DekParsingStrategy"
.end annotation


# static fields
.field public static final ASSUME_AES_CTR_HMAC:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

.field public static final ASSUME_AES_EAX:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

.field public static final ASSUME_AES_GCM:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

.field public static final ASSUME_AES_GCM_SIV:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

.field public static final ASSUME_CHACHA20POLY1305:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

.field public static final ASSUME_XCHACHA20POLY1305:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 97
    new-instance v0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    const-string v1, "ASSUME_AES_GCM"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;->ASSUME_AES_GCM:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    .line 101
    new-instance v0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    const-string v1, "ASSUME_XCHACHA20POLY1305"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;->ASSUME_XCHACHA20POLY1305:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    .line 105
    new-instance v0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    const-string v1, "ASSUME_CHACHA20POLY1305"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;->ASSUME_CHACHA20POLY1305:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    .line 109
    new-instance v0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    const-string v1, "ASSUME_AES_CTR_HMAC"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;->ASSUME_AES_CTR_HMAC:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    .line 113
    new-instance v0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    const-string v1, "ASSUME_AES_EAX"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;->ASSUME_AES_EAX:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    .line 117
    new-instance v0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    const-string v1, "ASSUME_AES_GCM_SIV"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;->ASSUME_AES_GCM_SIV:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;->name:Ljava/lang/String;

    return-object v0
.end method
