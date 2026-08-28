.class public Lcom/otaliastudios/transcoder/Transcoder;
.super Ljava/lang/Object;
.source "Transcoder.java"


# static fields
.field public static final SUCCESS_NOT_NEEDED:I = 0x1

.field public static final SUCCESS_TRANSCODED:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/otaliastudios/transcoder/Transcoder;
    .registers 1

    .line 49
    new-instance v0, Lcom/otaliastudios/transcoder/Transcoder;

    invoke-direct {v0}, Lcom/otaliastudios/transcoder/Transcoder;-><init>()V

    return-object v0
.end method

.method public static into(Lcom/otaliastudios/transcoder/sink/DataSink;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;
    .registers 2

    .line 88
    new-instance v0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;

    invoke-direct {v0, p0}, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;-><init>(Lcom/otaliastudios/transcoder/sink/DataSink;)V

    return-object v0
.end method

.method public static into(Ljava/io/FileDescriptor;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;
    .registers 2

    .line 76
    new-instance v0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;

    invoke-direct {v0, p0}, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method public static into(Ljava/lang/String;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;
    .registers 2

    .line 63
    new-instance v0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;

    invoke-direct {v0, p0}, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public transcode(Lcom/otaliastudios/transcoder/TranscoderOptions;)Ljava/util/concurrent/Future;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/transcoder/TranscoderOptions;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-static {}, Lcom/otaliastudios/transcoder/internal/utils/ThreadPool;->getExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/otaliastudios/transcoder/Transcoder$1;

    invoke-direct {v1, p0, p1}, Lcom/otaliastudios/transcoder/Transcoder$1;-><init>(Lcom/otaliastudios/transcoder/Transcoder;Lcom/otaliastudios/transcoder/TranscoderOptions;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
