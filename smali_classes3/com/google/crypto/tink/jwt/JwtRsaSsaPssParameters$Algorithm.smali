.class public final Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;
.super Ljava/lang/Object;
.source "JwtRsaSsaPssParameters.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Algorithm"
.end annotation


# static fields
.field public static final PS256:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

.field public static final PS384:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

.field public static final PS512:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 89
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

    const-string v1, "PS256"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;->PS256:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

    .line 92
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

    const-string v1, "PS384"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;->PS384:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

    .line 95
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

    const-string v1, "PS512"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;->PS512:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

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

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getStandardName()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;->name:Ljava/lang/String;

    return-object v0
.end method
