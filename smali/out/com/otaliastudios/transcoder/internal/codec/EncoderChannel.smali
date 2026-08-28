.class public interface abstract Lcom/otaliastudios/transcoder/internal/codec/EncoderChannel;
.super Ljava/lang/Object;
.source "Encoder.kt"

# interfaces
.implements Lcom/otaliastudios/transcoder/internal/pipeline/Channel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\u0008`\u0018\u00002\u00020\u0001J\u0016\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0018\u00010\u0007H&R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/codec/EncoderChannel;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        "surface",
        "Landroid/view/Surface;",
        "getSurface",
        "()Landroid/view/Surface;",
        "buffer",
        "Lkotlin/Pair;",
        "Ljava/nio/ByteBuffer;",
        "",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract buffer()Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSurface()Landroid/view/Surface;
.end method
