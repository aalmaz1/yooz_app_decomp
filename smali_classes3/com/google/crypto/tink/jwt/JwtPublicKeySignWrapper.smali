.class Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper;
.super Ljava/lang/Object;
.source "JwtPublicKeySignWrapper.java"

# interfaces
.implements Lcom/google/crypto/tink/internal/PrimitiveWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper$WrappedJwtPublicKeySign;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/crypto/tink/internal/PrimitiveWrapper<",
        "Lcom/google/crypto/tink/jwt/JwtPublicKeySign;",
        "Lcom/google/crypto/tink/jwt/JwtPublicKeySign;",
        ">;"
    }
.end annotation


# static fields
.field private static final WRAPPER:Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper;

    invoke-direct {v0}, Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper;->WRAPPER:Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static register()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 98
    invoke-static {}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper;->WRAPPER:Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper;

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registerPrimitiveWrapper(Lcom/google/crypto/tink/internal/PrimitiveWrapper;)V

    return-void
.end method


# virtual methods
.method public getInputPrimitiveClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/google/crypto/tink/jwt/JwtPublicKeySign;",
            ">;"
        }
    .end annotation

    .line 88
    const-class v0, Lcom/google/crypto/tink/jwt/JwtPublicKeySign;

    return-object v0
.end method

.method public getPrimitiveClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/google/crypto/tink/jwt/JwtPublicKeySign;",
            ">;"
        }
    .end annotation

    .line 83
    const-class v0, Lcom/google/crypto/tink/jwt/JwtPublicKeySign;

    return-object v0
.end method

.method public wrap(Lcom/google/crypto/tink/internal/PrimitiveSet;)Lcom/google/crypto/tink/jwt/JwtPublicKeySign;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "primitives"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/internal/PrimitiveSet<",
            "Lcom/google/crypto/tink/jwt/JwtPublicKeySign;",
            ">;)",
            "Lcom/google/crypto/tink/jwt/JwtPublicKeySign;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper$WrappedJwtPublicKeySign;

    invoke-direct {v0, p1}, Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper$WrappedJwtPublicKeySign;-><init>(Lcom/google/crypto/tink/internal/PrimitiveSet;)V

    return-object v0
.end method

.method public bridge synthetic wrap(Lcom/google/crypto/tink/internal/PrimitiveSet;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "primitives"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper;->wrap(Lcom/google/crypto/tink/internal/PrimitiveSet;)Lcom/google/crypto/tink/jwt/JwtPublicKeySign;

    move-result-object p1

    return-object p1
.end method
