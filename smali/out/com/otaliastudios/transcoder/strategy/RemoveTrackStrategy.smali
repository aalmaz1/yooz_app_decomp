.class public Lcom/otaliastudios/transcoder/strategy/RemoveTrackStrategy;
.super Ljava/lang/Object;
.source "RemoveTrackStrategy.java"

# interfaces
.implements Lcom/otaliastudios/transcoder/strategy/TrackStrategy;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createOutputFormat(Ljava/util/List;Landroid/media/MediaFormat;)Lcom/otaliastudios/transcoder/common/TrackStatus;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaFormat;",
            ">;",
            "Landroid/media/MediaFormat;",
            ")",
            "Lcom/otaliastudios/transcoder/common/TrackStatus;"
        }
    .end annotation

    .line 20
    sget-object p1, Lcom/otaliastudios/transcoder/common/TrackStatus;->REMOVING:Lcom/otaliastudios/transcoder/common/TrackStatus;

    return-object p1
.end method
