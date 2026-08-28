.class public final synthetic Lcom/otaliastudios/transcoder/Thumbnailer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/otaliastudios/transcoder/ThumbnailerOptions;


# direct methods
.method public synthetic constructor <init>(Lcom/otaliastudios/transcoder/ThumbnailerOptions;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/transcoder/Thumbnailer$$ExternalSyntheticLambda0;->f$0:Lcom/otaliastudios/transcoder/ThumbnailerOptions;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/otaliastudios/transcoder/Thumbnailer$$ExternalSyntheticLambda0;->f$0:Lcom/otaliastudios/transcoder/ThumbnailerOptions;

    invoke-static {v0}, Lcom/otaliastudios/transcoder/Thumbnailer;->$r8$lambda$P7RBsNTHmYGn9jiLQYnljGSPm7s(Lcom/otaliastudios/transcoder/ThumbnailerOptions;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
