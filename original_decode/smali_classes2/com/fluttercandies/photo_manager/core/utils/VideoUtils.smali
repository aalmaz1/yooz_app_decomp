.class public final Lcom/fluttercandies/photo_manager/core/utils/VideoUtils;
.super Ljava/lang/Object;
.source "VideoUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0007B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/core/utils/VideoUtils;",
        "",
        "()V",
        "getPropertiesUseMediaPlayer",
        "Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;",
        "path",
        "",
        "VideoInfo",
        "photo_manager_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/VideoUtils;


# direct methods
.method public static synthetic $r8$lambda$0oqojvLds6RTfv6-4KelGI6WLnM(Landroid/media/MediaPlayer;II)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils;->getPropertiesUseMediaPlayer$lambda$0(Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils;

    invoke-direct {v0}, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils;-><init>()V

    sput-object v0, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/VideoUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getPropertiesUseMediaPlayer$lambda$0(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final getPropertiesUseMediaPlayer(Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;
    .locals 4

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 10
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 11
    new-instance p1, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 13
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 19
    new-instance p1, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p1, v1, v2, v3}, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 21
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 22
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-object p1

    .line 15
    :catchall_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 16
    new-instance p1, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0}, Lcom/fluttercandies/photo_manager/core/utils/VideoUtils$VideoInfo;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object p1
.end method
