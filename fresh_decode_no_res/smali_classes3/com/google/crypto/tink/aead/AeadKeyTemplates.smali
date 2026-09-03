.class public final Lcom/google/crypto/tink/aead/AeadKeyTemplates;
.super Ljava/lang/Object;
.source "AeadKeyTemplates.java"


# static fields
.field public static final AES128_CTR_HMAC_SHA256:Lcom/google/crypto/tink/proto/KeyTemplate;

.field public static final AES128_EAX:Lcom/google/crypto/tink/proto/KeyTemplate;

.field public static final AES128_GCM:Lcom/google/crypto/tink/proto/KeyTemplate;

.field public static final AES256_CTR_HMAC_SHA256:Lcom/google/crypto/tink/proto/KeyTemplate;

.field public static final AES256_EAX:Lcom/google/crypto/tink/proto/KeyTemplate;

.field public static final AES256_GCM:Lcom/google/crypto/tink/proto/KeyTemplate;

.field public static final CHACHA20_POLY1305:Lcom/google/crypto/tink/proto/KeyTemplate;

.field public static final XCHACHA20_POLY1305:Lcom/google/crypto/tink/proto/KeyTemplate;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    .line 75
    invoke-static {v0}, Lcom/google/crypto/tink/aead/AeadKeyTemplates;->createAesGcmKeyTemplate(I)Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v1

    sput-object v1, Lcom/google/crypto/tink/aead/AeadKeyTemplates;->AES128_GCM:Lcom/google/crypto/tink/proto/KeyTemplate;

    const/16 v1, 0x20

    .line 89
    invoke-static {v1}, Lcom/google/crypto/tink/aead/AeadKeyTemplates;->createAesGcmKeyTemplate(I)Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v2

    sput-object v2, Lcom/google/crypto/tink/aead/AeadKeyTemplates;->AES256_GCM:Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 100
    invoke-static {v0, v0}, Lcom/google/crypto/tink/aead/AeadKeyTemplates;->createAesEaxKeyTemplate(II)Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v2

    sput-object v2, Lcom/google/crypto/tink/aead/AeadKeyTemplates;->AES128_EAX:Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 111
    invoke-static {v1, v0}, Lcom/google/crypto/tink/aead/AeadKeyTemplates;->createAesEaxKeyTemplate(II)Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v2

    sput-object v2, Lcom/google/crypto/tink/aead/AeadKeyTemplates;->AES256_EAX:Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 125
    sget-object v2, Lcom/google/crypto/tink/proto/HashType;->SHA256:Lcom/google/crypto/tink/proto/HashType;

    .line 126
    invoke-static {v0, v0, v1, v0, v2}, Lcom/google/crypto/tink/aead/AeadKeyTemplates;->createAesCtrHmacAeadKeyTemplate(IIIILcom/google/crypto/tink/proto/HashType;)Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v2

    sput-object v2, Lcom/google/crypto/tink/aead/AeadKeyTemplates;->AES128_CTR_HMAC_SHA256:Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 140
    sget-object v2, Lcom/google/crypto/tink/proto/HashType;->SHA256:Lcom/google/crypto/tink/proto/HashType;

    .line 141
    invoke-static {v1, v0, v1, v1, v2}, Lcom/google/crypto/tink/aead/AeadKeyTemplates;->createAesCtrHmacAeadKeyTemplate(IIIILcom/google/crypto/tink/proto/HashType;)Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/AeadKeyTemplates;->AES256_CTR_HMAC_SHA256:Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 150
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->newBuilder()Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    .line 151
    invoke-static {}, Lcom/google/crypto/tink/aead/ChaCha20Poly1305KeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/OutputPrefixType;->TINK:Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 152
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KeyTemplate;

    sput-object v0, Lcom/google/crypto/tink/aead/AeadKeyTemplates;->CHACHA20_POLY1305:Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 162
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->newBuilder()Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    .line 163
    invoke-static {}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/OutputPrefixType;->TINK:Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 164
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KeyTemplate;

    sput-object v0, Lcom/google/crypto/tink/aead/AeadKeyTemplates;->XCHACHA20_POLY1305:Lcom/google/crypto/tink/proto/KeyTemplate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAesCtrHmacAeadKeyTemplate(IIIILcom/google/crypto/tink/proto/HashType;)Lcom/google/crypto/tink/proto/KeyTemplate;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "aesKeySize",
            "ivSize",
            "hmacKeySize",
            "tagSize",
            "hashType"
        }
    .end annotation

    .line 204
    invoke-static {}, Lcom/google/crypto/tink/proto/AesCtrKeyFormat;->newBuilder()Lcom/google/crypto/tink/proto/AesCtrKeyFormat$Builder;

    move-result-object v0

    .line 205
    invoke-static {}, Lcom/google/crypto/tink/proto/AesCtrParams;->newBuilder()Lcom/google/crypto/tink/proto/AesCtrParams$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/crypto/tink/proto/AesCtrParams$Builder;->setIvSize(I)Lcom/google/crypto/tink/proto/AesCtrParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesCtrParams$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/AesCtrParams;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/AesCtrKeyFormat$Builder;->setParams(Lcom/google/crypto/tink/proto/AesCtrParams;)Lcom/google/crypto/tink/proto/AesCtrKeyFormat$Builder;

    move-result-object p1

    .line 206
    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/proto/AesCtrKeyFormat$Builder;->setKeySize(I)Lcom/google/crypto/tink/proto/AesCtrKeyFormat$Builder;

    move-result-object p0

    .line 207
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesCtrKeyFormat$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesCtrKeyFormat;

    .line 208
    invoke-static {}, Lcom/google/crypto/tink/proto/HmacKeyFormat;->newBuilder()Lcom/google/crypto/tink/proto/HmacKeyFormat$Builder;

    move-result-object p1

    .line 210
    invoke-static {}, Lcom/google/crypto/tink/proto/HmacParams;->newBuilder()Lcom/google/crypto/tink/proto/HmacParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/crypto/tink/proto/HmacParams$Builder;->setHash(Lcom/google/crypto/tink/proto/HashType;)Lcom/google/crypto/tink/proto/HmacParams$Builder;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/google/crypto/tink/proto/HmacParams$Builder;->setTagSize(I)Lcom/google/crypto/tink/proto/HmacParams$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/crypto/tink/proto/HmacParams$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p3

    check-cast p3, Lcom/google/crypto/tink/proto/HmacParams;

    .line 209
    invoke-virtual {p1, p3}, Lcom/google/crypto/tink/proto/HmacKeyFormat$Builder;->setParams(Lcom/google/crypto/tink/proto/HmacParams;)Lcom/google/crypto/tink/proto/HmacKeyFormat$Builder;

    move-result-object p1

    .line 211
    invoke-virtual {p1, p2}, Lcom/google/crypto/tink/proto/HmacKeyFormat$Builder;->setKeySize(I)Lcom/google/crypto/tink/proto/HmacKeyFormat$Builder;

    move-result-object p1

    .line 212
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/HmacKeyFormat$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/HmacKeyFormat;

    .line 213
    invoke-static {}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;->newBuilder()Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat$Builder;

    move-result-object p2

    .line 214
    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat$Builder;->setAesCtrKeyFormat(Lcom/google/crypto/tink/proto/AesCtrKeyFormat;)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat$Builder;

    move-result-object p0

    .line 215
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat$Builder;->setHmacKeyFormat(Lcom/google/crypto/tink/proto/HmacKeyFormat;)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat$Builder;

    move-result-object p0

    .line 216
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;

    .line 217
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->newBuilder()Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p1

    .line 218
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p0

    .line 219
    invoke-static {}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p0

    sget-object p1, Lcom/google/crypto/tink/proto/OutputPrefixType;->TINK:Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 220
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p0

    .line 221
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/KeyTemplate;

    return-object p0
.end method

.method public static createAesEaxKeyTemplate(II)Lcom/google/crypto/tink/proto/KeyTemplate;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keySize",
            "ivSize"
        }
    .end annotation

    .line 187
    invoke-static {}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;->newBuilder()Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;

    move-result-object v0

    .line 188
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;->setKeySize(I)Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;

    move-result-object p0

    .line 189
    invoke-static {}, Lcom/google/crypto/tink/proto/AesEaxParams;->newBuilder()Lcom/google/crypto/tink/proto/AesEaxParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/AesEaxParams$Builder;->setIvSize(I)Lcom/google/crypto/tink/proto/AesEaxParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesEaxParams$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/AesEaxParams;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;->setParams(Lcom/google/crypto/tink/proto/AesEaxParams;)Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;

    move-result-object p0

    .line 190
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;

    .line 191
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->newBuilder()Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p1

    .line 192
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p0

    .line 193
    invoke-static {}, Lcom/google/crypto/tink/aead/AesEaxKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p0

    sget-object p1, Lcom/google/crypto/tink/proto/OutputPrefixType;->TINK:Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 194
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p0

    .line 195
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/KeyTemplate;

    return-object p0
.end method

.method public static createAesGcmKeyTemplate(I)Lcom/google/crypto/tink/proto/KeyTemplate;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keySize"
        }
    .end annotation

    .line 172
    invoke-static {}, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;->newBuilder()Lcom/google/crypto/tink/proto/AesGcmKeyFormat$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/AesGcmKeyFormat$Builder;->setKeySize(I)Lcom/google/crypto/tink/proto/AesGcmKeyFormat$Builder;

    move-result-object p0

    .line 174
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesGcmKeyFormat$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;

    .line 175
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->newBuilder()Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p0

    .line 177
    invoke-static {}, Lcom/google/crypto/tink/aead/AesGcmKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p0

    sget-object v0, Lcom/google/crypto/tink/proto/OutputPrefixType;->TINK:Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 178
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p0

    .line 179
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/KeyTemplate;

    return-object p0
.end method

.method public static createKmsEnvelopeAeadKeyTemplate(Ljava/lang/String;Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/proto/KeyTemplate;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "kekUri",
            "dekTemplate"
        }
    .end annotation

    .line 234
    invoke-static {}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;->newBuilder()Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat$Builder;

    move-result-object v0

    .line 235
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat$Builder;->setDekTemplate(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat$Builder;

    move-result-object p1

    .line 236
    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat$Builder;->setKekUri(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat$Builder;

    move-result-object p0

    .line 237
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;

    .line 238
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->newBuilder()Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p1

    .line 239
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p0

    .line 240
    invoke-static {}, Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p0

    sget-object p1, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 241
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p0

    .line 242
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/KeyTemplate;

    return-object p0
.end method
