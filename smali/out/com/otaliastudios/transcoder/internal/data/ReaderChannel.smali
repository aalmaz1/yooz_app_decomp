.class public interface abstract Lcom/otaliastudios/transcoder/internal/data/ReaderChannel;
.super Ljava/lang/Object;
.source "Reader.kt"

# interfaces
.implements Lcom/otaliastudios/transcoder/internal/pipeline/Channel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\u0008`\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003H&\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/data/ReaderChannel;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
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
