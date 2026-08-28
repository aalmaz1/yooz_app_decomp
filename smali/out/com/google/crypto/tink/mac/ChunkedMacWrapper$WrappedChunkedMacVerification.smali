.class Lcom/google/crypto/tink/mac/ChunkedMacWrapper$WrappedChunkedMacVerification;
.super Ljava/lang/Object;
.source "ChunkedMacWrapper.java"

# interfaces
.implements Lcom/google/crypto/tink/mac/ChunkedMacVerification;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/mac/ChunkedMacWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedChunkedMacVerification"
.end annotation


# instance fields
.field private final verifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/mac/ChunkedMacVerification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verificationEntries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/mac/ChunkedMacVerification;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/crypto/tink/mac/ChunkedMacWrapper$WrappedChunkedMacVerification;->verifications:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/google/crypto/tink/mac/ChunkedMacWrapper$1;)V
    .registers 3

    .line 45
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/mac/ChunkedMacWrapper$WrappedChunkedMacVerification;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/nio/ByteBuffer;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 60
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 62
    iget-object v1, p0, Lcom/google/crypto/tink/mac/ChunkedMacWrapper$WrappedChunkedMacVerification;->verifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/mac/ChunkedMacVerification;

    .line 63
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 64
    invoke-interface {v2, v0}, Lcom/google/crypto/tink/mac/ChunkedMacVerification;->update(Ljava/nio/ByteBuffer;)V

    goto :goto_d

    .line 66
    :cond_20
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public verifyMac()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "MAC verification failed for all suitable keys in keyset"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/google/crypto/tink/mac/ChunkedMacWrapper$WrappedChunkedMacVerification;->verifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/mac/ChunkedMacVerification;

    .line 75
    :try_start_19
    invoke-interface {v2}, Lcom/google/crypto/tink/mac/ChunkedMacVerification;->verifyMac()V
    :try_end_1c
    .catch Ljava/security/GeneralSecurityException; {:try_start_19 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception v2

    .line 80
    invoke-virtual {v0, v2}, Ljava/security/GeneralSecurityException;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_d

    .line 84
    :cond_22
    throw v0
.end method
