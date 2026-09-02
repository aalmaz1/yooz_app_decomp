.class final Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$location$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultTranscodeEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;-><init>(Lcom/otaliastudios/transcoder/internal/DataSources;Lcom/otaliastudios/transcoder/sink/DataSink;Lcom/otaliastudios/transcoder/internal/utils/TrackMap;Lcom/otaliastudios/transcoder/validator/Validator;ILcom/otaliastudios/transcoder/stretch/AudioStretcher;Lcom/otaliastudios/transcoder/resample/AudioResampler;Lcom/otaliastudios/transcoder/time/TimeInterpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/otaliastudios/transcoder/source/DataSource;",
        "[D>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0013\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/otaliastudios/transcoder/source/DataSource;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$location$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$location$1;

    invoke-direct {v0}, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$location$1;-><init>()V

    sput-object v0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$location$1;->INSTANCE:Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$location$1;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 54
    check-cast p1, Lcom/otaliastudios/transcoder/source/DataSource;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$location$1;->invoke(Lcom/otaliastudios/transcoder/source/DataSource;)[D

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lcom/otaliastudios/transcoder/source/DataSource;)[D
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-interface {p1}, Lcom/otaliastudios/transcoder/source/DataSource;->getLocation()[D

    move-result-object p1

    return-object p1
.end method
