.class public abstract Lcom/otaliastudios/transcoder/internal/pipeline/State;
.super Ljava/lang/Object;
.source "State.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;,
        Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;,
        Lcom/otaliastudios/transcoder/internal/pipeline/State$Wait;,
        Lcom/otaliastudios/transcoder/internal/pipeline/State$Retry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00080\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u00020\u0002:\u0004\u0004\u0005\u0006\u0007B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0003\u0082\u0001\u0003\u0008\t\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/pipeline/State;",
        "T",
        "",
        "()V",
        "Eos",
        "Ok",
        "Retry",
        "Wait",
        "Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/State$Wait;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/State$Retry;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/pipeline/State;-><init>()V

    return-void
.end method
