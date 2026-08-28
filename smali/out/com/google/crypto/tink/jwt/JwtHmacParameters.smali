.class public Lcom/google/crypto/tink/jwt/JwtHmacParameters;
.super Lcom/google/crypto/tink/jwt/JwtMacParameters;
.source "JwtHmacParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;,
        Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;,
        Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;
    }
.end annotation


# instance fields
.field private final algorithm:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

.field private final keySizeBytes:I

.field private final kidStrategy:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;


# direct methods
.method private constructor <init>(ILcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keySizeBytes",
            "kidStrategy",
            "algorithm"
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Lcom/google/crypto/tink/jwt/JwtMacParameters;-><init>()V

    .line 149
    iput p1, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->keySizeBytes:I

    .line 150
    iput-object p2, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    .line 151
    iput-object p3, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->algorithm:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;Lcom/google/crypto/tink/jwt/JwtHmacParameters$1;)V
    .registers 5

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/jwt/JwtHmacParameters;-><init>(ILcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;
    .registers 2

    .line 145
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;-><init>(Lcom/google/crypto/tink/jwt/JwtHmacParameters$1;)V

    return-object v0
.end method


# virtual methods
.method public allowKidAbsent()Z
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;->CUSTOM:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

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

    .line 183
    instance-of v0, p1, Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 186
    :cond_6
    check-cast p1, Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    .line 187
    iget v0, p1, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->keySizeBytes:I

    iget v2, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->keySizeBytes:I

    if-ne v0, v2, :cond_23

    iget-object v0, p1, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    .line 188
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object p1, p1, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->algorithm:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->algorithm:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    const/4 v1, 0x1

    :cond_23
    return v1
.end method

.method public getAlgorithm()Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->algorithm:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    return-object v0
.end method

.method public getKeySizeBytes()I
    .registers 2

    .line 159
    iget v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->keySizeBytes:I

    return v0
.end method

.method public getKidStrategy()Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .registers 3

    .line 172
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;->BASE64_ENCODED_KEY_ID:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 194
    const-class v2, Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->keySizeBytes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->algorithm:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JWT HMAC Parameters (kidStrategy: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Algorithm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->algorithm:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->keySizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-byte key)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
