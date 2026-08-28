.class Lcom/google/crypto/tink/jwt/JwtEcdsaVerifyKeyManager$1;
.super Ljava/lang/Object;
.source "JwtEcdsaVerifyKeyManager.java"

# interfaces
.implements Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/crypto/tink/jwt/JwtEcdsaVerifyKeyManager;->createFullPrimitive(Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;)Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$publicKey:Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

.field final synthetic val$verifier:Lcom/google/crypto/tink/PublicKeyVerify;


# direct methods
.method constructor <init>(Lcom/google/crypto/tink/PublicKeyVerify;Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$verifier",
            "val$publicKey"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaVerifyKeyManager$1;->val$verifier:Lcom/google/crypto/tink/PublicKeyVerify;

    iput-object p2, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaVerifyKeyManager$1;->val$publicKey:Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verifyAndDecode(Ljava/lang/String;Lcom/google/crypto/tink/jwt/JwtValidator;)Lcom/google/crypto/tink/jwt/VerifiedJwt;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "compact",
            "validator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 90
    invoke-static {p1}, Lcom/google/crypto/tink/jwt/JwtFormat;->splitSignedCompact(Ljava/lang/String;)Lcom/google/crypto/tink/jwt/JwtFormat$Parts;

    move-result-object p1

    .line 91
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaVerifyKeyManager$1;->val$verifier:Lcom/google/crypto/tink/PublicKeyVerify;

    iget-object v1, p1, Lcom/google/crypto/tink/jwt/JwtFormat$Parts;->signatureOrMac:[B

    iget-object v2, p1, Lcom/google/crypto/tink/jwt/JwtFormat$Parts;->unsignedCompact:Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/crypto/tink/PublicKeyVerify;->verify([B[B)V

    .line 92
    iget-object v0, p1, Lcom/google/crypto/tink/jwt/JwtFormat$Parts;->header:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/crypto/tink/jwt/JsonUtil;->parseJson(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaVerifyKeyManager$1;->val$publicKey:Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

    .line 95
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->getAlgorithm()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;->getStandardName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaVerifyKeyManager$1;->val$publicKey:Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

    .line 96
    invoke-virtual {v2}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->getKid()Ljava/util/Optional;

    move-result-object v2

    iget-object v3, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaVerifyKeyManager$1;->val$publicKey:Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

    .line 97
    invoke-virtual {v3}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->allowKidAbsent()Z

    move-result v3

    .line 93
    invoke-static {v0, v1, v2, v3}, Lcom/google/crypto/tink/jwt/JwtFormat;->validateHeader(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/util/Optional;Z)V

    .line 98
    invoke-static {v0}, Lcom/google/crypto/tink/jwt/JwtFormat;->getTypeHeader(Lcom/google/gson/JsonObject;)Ljava/util/Optional;

    move-result-object v0

    iget-object p1, p1, Lcom/google/crypto/tink/jwt/JwtFormat$Parts;->payload:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/jwt/RawJwt;->fromJsonPayload(Ljava/util/Optional;Ljava/lang/String;)Lcom/google/crypto/tink/jwt/RawJwt;

    move-result-object p1

    .line 99
    invoke-virtual {p2, p1}, Lcom/google/crypto/tink/jwt/JwtValidator;->validate(Lcom/google/crypto/tink/jwt/RawJwt;)Lcom/google/crypto/tink/jwt/VerifiedJwt;

    move-result-object p1

    return-object p1
.end method
