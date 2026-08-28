.class public final Lcom/google/crypto/tink/keyderivation/internal/KeysetDeriverWrapper;
.super Ljava/lang/Object;
.source "KeysetDeriverWrapper.java"

# interfaces
.implements Lcom/google/crypto/tink/internal/PrimitiveWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/keyderivation/internal/KeysetDeriverWrapper$WrappedKeysetDeriver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/crypto/tink/internal/PrimitiveWrapper<",
        "Lcom/google/crypto/tink/keyderivation/internal/KeyDeriver;",
        "Lcom/google/crypto/tink/keyderivation/KeysetDeriver;",
        ">;"
    }
.end annotation


# static fields
.field private static final WRAPPER:Lcom/google/crypto/tink/keyderivation/internal/KeysetDeriverWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lcom/google/crypto/tink/keyderivation/internal/KeysetDeriverWrapper;

    invoke-direct {v0}, Lcom/google/crypto/tink/keyderivation/internal/KeysetDeriverWrapper;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/keyderivation/internal/KeysetDeriverWrapper;->WRAPPER:Lcom/google/crypto/tink/keyderivation/internal/KeysetDeriverWrapper;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static register()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 97
    invoke-static {}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/keyderivation/internal/KeysetDeriverWrapper;->WRAPPER:Lcom/google/crypto/tink/keyderivation/internal/KeysetDeriverWrapper;

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registerPrimitiveWrapper(Lcom/google/crypto/tink/internal/PrimitiveWrapper;)V

    return-void
.end method

.method private static validate(Lcom/google/crypto/tink/internal/PrimitiveSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primitiveSet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/internal/PrimitiveSet<",
            "Lcom/google/crypto/tink/keyderivation/internal/KeyDeriver;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/PrimitiveSet;->getPrimary()Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;

    move-result-object p0

    if-eqz p0, :cond_7

    return-void

    .line 36
    :cond_7
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Primitive set has no primary."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getInputPrimitiveClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/google/crypto/tink/keyderivation/internal/KeyDeriver;",
            ">;"
        }
    .end annotation

    .line 92
    const-class v0, Lcom/google/crypto/tink/keyderivation/internal/KeyDeriver;

    return-object v0
.end method

.method public getPrimitiveClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/google/crypto/tink/keyderivation/KeysetDeriver;",
            ">;"
        }
    .end annotation

    .line 87
    const-class v0, Lcom/google/crypto/tink/keyderivation/KeysetDeriver;

    return-object v0
.end method

.method public wrap(Lcom/google/crypto/tink/internal/PrimitiveSet;)Lcom/google/crypto/tink/keyderivation/KeysetDeriver;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "primitiveSet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/internal/PrimitiveSet<",
            "Lcom/google/crypto/tink/keyderivation/internal/KeyDeriver;",
            ">;)",
            "Lcom/google/crypto/tink/keyderivation/KeysetDeriver;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 81
    invoke-static {p1}, Lcom/google/crypto/tink/keyderivation/internal/KeysetDeriverWrapper;->validate(Lcom/google/crypto/tink/internal/PrimitiveSet;)V

    .line 82
    new-instance v0, Lcom/google/crypto/tink/keyderivation/internal/KeysetDeriverWrapper$WrappedKeysetDeriver;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/crypto/tink/keyderivation/internal/KeysetDeriverWrapper$WrappedKeysetDeriver;-><init>(Lcom/google/crypto/tink/internal/PrimitiveSet;Lcom/google/crypto/tink/keyderivation/internal/KeysetDeriverWrapper$1;)V

    return-object v0
.end method

.method public bridge synthetic wrap(Lcom/google/crypto/tink/internal/PrimitiveSet;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "primitiveSet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/keyderivation/internal/KeysetDeriverWrapper;->wrap(Lcom/google/crypto/tink/internal/PrimitiveSet;)Lcom/google/crypto/tink/keyderivation/KeysetDeriver;

    move-result-object p1

    return-object p1
.end method
