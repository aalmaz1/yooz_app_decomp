.class public final Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;
.super Lcom/google/crypto/tink/keyderivation/KeyDerivationParameters;
.source "PrfBasedKeyDerivationParameters.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters$Builder;
    }
.end annotation


# instance fields
.field private final derivedKeyParameters:Lcom/google/crypto/tink/Parameters;

.field private final prfParameters:Lcom/google/crypto/tink/prf/PrfParameters;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/prf/PrfParameters;Lcom/google/crypto/tink/Parameters;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "prfParameters",
            "derivedKeyParameters"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lcom/google/crypto/tink/keyderivation/KeyDerivationParameters;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;->prfParameters:Lcom/google/crypto/tink/prf/PrfParameters;

    .line 70
    iput-object p2, p0, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;->derivedKeyParameters:Lcom/google/crypto/tink/Parameters;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/prf/PrfParameters;Lcom/google/crypto/tink/Parameters;Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters$1;)V
    .registers 4

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;-><init>(Lcom/google/crypto/tink/prf/PrfParameters;Lcom/google/crypto/tink/Parameters;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters$Builder;
    .registers 1

    .line 74
    new-instance v0, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters$Builder;

    invoke-direct {v0}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 93
    instance-of v0, p1, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 96
    :cond_6
    check-cast p1, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;

    .line 97
    invoke-virtual {p1}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;->getPrfParameters()Lcom/google/crypto/tink/prf/PrfParameters;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;->getPrfParameters()Lcom/google/crypto/tink/prf/PrfParameters;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 98
    invoke-virtual {p1}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;->getDerivedKeyParameters()Lcom/google/crypto/tink/Parameters;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;->getDerivedKeyParameters()Lcom/google/crypto/tink/Parameters;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 v1, 0x1

    :cond_25
    return v1
.end method

.method public getDerivedKeyParameters()Lcom/google/crypto/tink/Parameters;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;->derivedKeyParameters:Lcom/google/crypto/tink/Parameters;

    return-object v0
.end method

.method public getPrfParameters()Lcom/google/crypto/tink/prf/PrfParameters;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;->prfParameters:Lcom/google/crypto/tink/prf/PrfParameters;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 103
    const-class v2, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;->prfParameters:Lcom/google/crypto/tink/prf/PrfParameters;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;->derivedKeyParameters:Lcom/google/crypto/tink/Parameters;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 108
    iget-object v2, p0, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;->prfParameters:Lcom/google/crypto/tink/prf/PrfParameters;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;->derivedKeyParameters:Lcom/google/crypto/tink/Parameters;

    aput-object v2, v0, v1

    const-string v1, "PrfBasedKeyDerivationParameters(%s, %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
