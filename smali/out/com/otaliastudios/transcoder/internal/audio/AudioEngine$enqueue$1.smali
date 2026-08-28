.class final Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$enqueue$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AudioEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->enqueue(Lcom/otaliastudios/transcoder/internal/codec/DecoderData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
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
.field final synthetic $data:Lcom/otaliastudios/transcoder/internal/codec/DecoderData;


# direct methods
.method constructor <init>(Lcom/otaliastudios/transcoder/internal/codec/DecoderData;)V
    .registers 2

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$enqueue$1;->$data:Lcom/otaliastudios/transcoder/internal/codec/DecoderData;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 59
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$enqueue$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$enqueue$1;->$data:Lcom/otaliastudios/transcoder/internal/codec/DecoderData;

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/codec/DecoderData;->getRelease()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
