.class public Lorg/msgpack/core/buffer/ArrayBufferInput;
.super Ljava/lang/Object;
.source "ArrayBufferInput.java"

# interfaces
.implements Lorg/msgpack/core/buffer/MessageBufferInput;


# instance fields
.field private buffer:Lorg/msgpack/core/buffer/MessageBuffer;

.field private isEmpty:Z


# direct methods
.method public constructor <init>(Lorg/msgpack/core/buffer/MessageBuffer;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/msgpack/core/buffer/ArrayBufferInput;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    if-nez p1, :cond_b

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lorg/msgpack/core/buffer/ArrayBufferInput;->isEmpty:Z

    goto :goto_e

    :cond_b
    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lorg/msgpack/core/buffer/ArrayBufferInput;->isEmpty:Z

    :goto_e
    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    const/4 v0, 0x0

    .line 42
    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/msgpack/core/buffer/ArrayBufferInput;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 5

    const-string v0, "input array is null"

    .line 47
    invoke-static {p1, v0}, Lorg/msgpack/core/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1, p2, p3}, Lorg/msgpack/core/buffer/MessageBuffer;->wrap([BII)Lorg/msgpack/core/buffer/MessageBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/msgpack/core/buffer/ArrayBufferInput;-><init>(Lorg/msgpack/core/buffer/MessageBuffer;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lorg/msgpack/core/buffer/ArrayBufferInput;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lorg/msgpack/core/buffer/ArrayBufferInput;->isEmpty:Z

    return-void
.end method

.method public next()Lorg/msgpack/core/buffer/MessageBuffer;
    .registers 2

    .line 82
    iget-boolean v0, p0, Lorg/msgpack/core/buffer/ArrayBufferInput;->isEmpty:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lorg/msgpack/core/buffer/ArrayBufferInput;->isEmpty:Z

    .line 86
    iget-object v0, p0, Lorg/msgpack/core/buffer/ArrayBufferInput;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    return-object v0
.end method

.method public reset(Lorg/msgpack/core/buffer/MessageBuffer;)Lorg/msgpack/core/buffer/MessageBuffer;
    .registers 3

    .line 58
    iget-object v0, p0, Lorg/msgpack/core/buffer/ArrayBufferInput;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    .line 59
    iput-object p1, p0, Lorg/msgpack/core/buffer/ArrayBufferInput;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    if-nez p1, :cond_a

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lorg/msgpack/core/buffer/ArrayBufferInput;->isEmpty:Z

    goto :goto_d

    :cond_a
    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lorg/msgpack/core/buffer/ArrayBufferInput;->isEmpty:Z

    :goto_d
    return-object v0
.end method

.method public reset([B)V
    .registers 3

    const-string v0, "input array is null"

    .line 71
    invoke-static {p1, v0}, Lorg/msgpack/core/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Lorg/msgpack/core/buffer/MessageBuffer;->wrap([B)Lorg/msgpack/core/buffer/MessageBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/msgpack/core/buffer/ArrayBufferInput;->reset(Lorg/msgpack/core/buffer/MessageBuffer;)Lorg/msgpack/core/buffer/MessageBuffer;

    return-void
.end method

.method public reset([BII)V
    .registers 5

    const-string v0, "input array is null"

    .line 76
    invoke-static {p1, v0}, Lorg/msgpack/core/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1, p2, p3}, Lorg/msgpack/core/buffer/MessageBuffer;->wrap([BII)Lorg/msgpack/core/buffer/MessageBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/msgpack/core/buffer/ArrayBufferInput;->reset(Lorg/msgpack/core/buffer/MessageBuffer;)Lorg/msgpack/core/buffer/MessageBuffer;

    return-void
.end method
