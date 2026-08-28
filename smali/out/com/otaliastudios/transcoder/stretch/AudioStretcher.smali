.class public interface abstract Lcom/otaliastudios/transcoder/stretch/AudioStretcher;
.super Ljava/lang/Object;
.source "AudioStretcher.java"


# static fields
.field public static final CUT:Lcom/otaliastudios/transcoder/stretch/AudioStretcher;

.field public static final INSERT:Lcom/otaliastudios/transcoder/stretch/AudioStretcher;

.field public static final PASSTHROUGH:Lcom/otaliastudios/transcoder/stretch/AudioStretcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lcom/otaliastudios/transcoder/stretch/PassThroughAudioStretcher;

    invoke-direct {v0}, Lcom/otaliastudios/transcoder/stretch/PassThroughAudioStretcher;-><init>()V

    sput-object v0, Lcom/otaliastudios/transcoder/stretch/AudioStretcher;->PASSTHROUGH:Lcom/otaliastudios/transcoder/stretch/AudioStretcher;

    .line 33
    new-instance v0, Lcom/otaliastudios/transcoder/stretch/CutAudioStretcher;

    invoke-direct {v0}, Lcom/otaliastudios/transcoder/stretch/CutAudioStretcher;-><init>()V

    sput-object v0, Lcom/otaliastudios/transcoder/stretch/AudioStretcher;->CUT:Lcom/otaliastudios/transcoder/stretch/AudioStretcher;

    .line 35
    new-instance v0, Lcom/otaliastudios/transcoder/stretch/InsertAudioStretcher;

    invoke-direct {v0}, Lcom/otaliastudios/transcoder/stretch/InsertAudioStretcher;-><init>()V

    sput-object v0, Lcom/otaliastudios/transcoder/stretch/AudioStretcher;->INSERT:Lcom/otaliastudios/transcoder/stretch/AudioStretcher;

    return-void
.end method


# virtual methods
.method public abstract stretch(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;I)V
.end method
