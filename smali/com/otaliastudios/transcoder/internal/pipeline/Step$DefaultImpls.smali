.class public final Lcom/otaliastudios/transcoder/internal/pipeline/Step$DefaultImpls;
.super Ljava/lang/Object;
.source "Step.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/transcoder/internal/pipeline/Step;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static initialize(Lcom/otaliastudios/transcoder/internal/pipeline/Step;Lcom/otaliastudios/transcoder/internal/pipeline/Channel;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Input:",
            "Ljava/lang/Object;",
            "InputChannel::",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
            "Output:",
            "Ljava/lang/Object;",
            "OutputChannel::",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
            ">(",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Step<",
            "TInput;TInputChannel;TOutput;TOutputChannel;>;TOutputChannel;)V"
        }
    .end annotation

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "next"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static release(Lcom/otaliastudios/transcoder/internal/pipeline/Step;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Input:",
            "Ljava/lang/Object;",
            "InputChannel::",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
            "Output:",
            "Ljava/lang/Object;",
            "OutputChannel::",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
            ">(",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Step<",
            "TInput;TInputChannel;TOutput;TOutputChannel;>;)V"
        }
    .end annotation

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
