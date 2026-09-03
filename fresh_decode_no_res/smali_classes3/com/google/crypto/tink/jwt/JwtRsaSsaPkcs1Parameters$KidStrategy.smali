.class public final Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;
.super Ljava/lang/Object;
.source "JwtRsaSsaPkcs1Parameters.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KidStrategy"
.end annotation


# static fields
.field public static final BASE64_ENCODED_KEY_ID:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

.field public static final CUSTOM:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

.field public static final IGNORED:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    const-string v1, "BASE64_ENCODED_KEY_ID"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;->BASE64_ENCODED_KEY_ID:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    .line 58
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    const-string v1, "IGNORED"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    .line 72
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;->CUSTOM:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

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

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;->name:Ljava/lang/String;

    return-object v0
.end method
