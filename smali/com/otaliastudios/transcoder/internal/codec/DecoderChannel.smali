.class public interface abstract Lcom/otaliastudios/transcoder/internal/codec/DecoderChannel;
.super Ljava/lang/Object;
.source "Decoder.kt"

# interfaces
.implements Lcom/otaliastudios/transcoder/internal/pipeline/Channel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008`\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\u0005H&\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/codec/DecoderChannel;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        "handleRawFormat",
        "",
        "rawFormat",
        "Landroid/media/MediaFormat;",
        "handleSourceFormat",
        "Landroid/view/Surface;",
        "sourceFormat",
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
.method public abstract handleRawFormat(Landroid/media/MediaFormat;)V
.end method

.method public abstract handleSourceFormat(Landroid/media/MediaFormat;)Landroid/view/Surface;
.end method
