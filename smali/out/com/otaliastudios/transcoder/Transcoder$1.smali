.class Lcom/otaliastudios/transcoder/Transcoder$1;
.super Ljava/lang/Object;
.source "Transcoder.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/transcoder/Transcoder;->transcode(Lcom/otaliastudios/transcoder/TranscoderOptions;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/transcoder/Transcoder;

.field final synthetic val$options:Lcom/otaliastudios/transcoder/TranscoderOptions;


# direct methods
.method constructor <init>(Lcom/otaliastudios/transcoder/Transcoder;Lcom/otaliastudios/transcoder/TranscoderOptions;)V
    .registers 3

    .line 99
    iput-object p1, p0, Lcom/otaliastudios/transcoder/Transcoder$1;->this$0:Lcom/otaliastudios/transcoder/Transcoder;

    iput-object p2, p0, Lcom/otaliastudios/transcoder/Transcoder$1;->val$options:Lcom/otaliastudios/transcoder/TranscoderOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/Transcoder$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/otaliastudios/transcoder/Transcoder$1;->val$options:Lcom/otaliastudios/transcoder/TranscoderOptions;

    invoke-static {v0}, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeEngine;->transcode(Lcom/otaliastudios/transcoder/TranscoderOptions;)V

    const/4 v0, 0x0

    return-object v0
.end method
