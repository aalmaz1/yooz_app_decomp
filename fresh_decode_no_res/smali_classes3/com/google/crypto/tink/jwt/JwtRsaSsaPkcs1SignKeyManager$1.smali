.class Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager$1;
.super Ljava/lang/Object;
.source "JwtRsaSsaPkcs1SignKeyManager.java"

# interfaces
.implements Lcom/google/crypto/tink/jwt/JwtPublicKeySign;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;->createFullPrimitive(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;)Lcom/google/crypto/tink/jwt/JwtPublicKeySign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$algorithm:Ljava/lang/String;

.field final synthetic val$privateKey:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;

.field final synthetic val$signer:Lcom/google/crypto/tink/PublicKeySign;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;Lcom/google/crypto/tink/PublicKeySign;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$algorithm",
            "val$privateKey",
            "val$signer"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager$1;->val$algorithm:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager$1;->val$privateKey:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;

    iput-object p3, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager$1;->val$signer:Lcom/google/crypto/tink/PublicKeySign;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public signAndEncode(Lcom/google/crypto/tink/jwt/RawJwt;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rawJwt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager$1;->val$algorithm:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager$1;->val$privateKey:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;

    .line 92
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->getPublicKey()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->getKid()Ljava/util/Optional;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/crypto/tink/jwt/JwtFormat;->createUnsignedCompact(Ljava/lang/String;Ljava/util/Optional;Lcom/google/crypto/tink/jwt/RawJwt;)Ljava/lang/String;

    move-result-object p1

    .line 93
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager$1;->val$signer:Lcom/google/crypto/tink/PublicKeySign;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 94
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/crypto/tink/PublicKeySign;->sign([B)[B

    move-result-object v0

    .line 93
    invoke-static {p1, v0}, Lcom/google/crypto/tink/jwt/JwtFormat;->createSignedCompact(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
