.class final Lcom/otaliastudios/transcoder/internal/codec/Decoder$drain$data$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Decoder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/transcoder/internal/codec/Decoder;->drain()Lcom/otaliastudios/transcoder/internal/pipeline/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $result:I

.field final synthetic this$0:Lcom/otaliastudios/transcoder/internal/codec/Decoder;


# direct methods
.method constructor <init>(Lcom/otaliastudios/transcoder/internal/codec/Decoder;I)V
    .registers 3

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder$drain$data$1;->this$0:Lcom/otaliastudios/transcoder/internal/codec/Decoder;

    iput p2, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder$drain$data$1;->$result:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 113
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/otaliastudios/transcoder/internal/codec/Decoder$drain$data$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .registers 4

    .line 114
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder$drain$data$1;->this$0:Lcom/otaliastudios/transcoder/internal/codec/Decoder;

    invoke-static {v0}, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->access$getCodec$p(Lcom/otaliastudios/transcoder/internal/codec/Decoder;)Landroid/media/MediaCodec;

    move-result-object v0

    iget v1, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder$drain$data$1;->$result:I

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 115
    iget-object p1, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder$drain$data$1;->this$0:Lcom/otaliastudios/transcoder/internal/codec/Decoder;

    invoke-static {p1}, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->access$getDequeuedOutputs(Lcom/otaliastudios/transcoder/internal/codec/Decoder;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->access$setDequeuedOutputs(Lcom/otaliastudios/transcoder/internal/codec/Decoder;I)V

    return-void
.end method
