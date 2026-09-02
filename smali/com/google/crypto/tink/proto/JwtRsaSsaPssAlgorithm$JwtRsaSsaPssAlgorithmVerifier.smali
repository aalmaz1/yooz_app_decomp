.class final Lcom/google/crypto/tink/proto/JwtRsaSsaPssAlgorithm$JwtRsaSsaPssAlgorithmVerifier;
.super Ljava/lang/Object;
.source "JwtRsaSsaPssAlgorithm.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/proto/JwtRsaSsaPssAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JwtRsaSsaPssAlgorithmVerifier"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 127
    new-instance v0, Lcom/google/crypto/tink/proto/JwtRsaSsaPssAlgorithm$JwtRsaSsaPssAlgorithmVerifier;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPssAlgorithm$JwtRsaSsaPssAlgorithmVerifier;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/proto/JwtRsaSsaPssAlgorithm$JwtRsaSsaPssAlgorithmVerifier;->INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    .line 130
    invoke-static {p1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPssAlgorithm;->forNumber(I)Lcom/google/crypto/tink/proto/JwtRsaSsaPssAlgorithm;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method
