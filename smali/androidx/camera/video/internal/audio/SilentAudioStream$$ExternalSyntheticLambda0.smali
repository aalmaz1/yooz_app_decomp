.class public final synthetic Landroidx/camera/video/internal/audio/SilentAudioStream$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/audio/SilentAudioStream$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroidx/camera/video/internal/audio/SilentAudioStream$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;

    invoke-static {v0}, Landroidx/camera/video/internal/audio/SilentAudioStream;->lambda$notifySilenced$0(Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;)V

    return-void
.end method
