.class public abstract Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine;
.super Ljava/lang/Object;
.source "ThumbnailsEngine.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008 \u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H&J\u001c\u0010\u0005\u001a\u00020\u00042\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00040\u0007H&\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine;",
        "",
        "()V",
        "cleanup",
        "",
        "thumbnails",
        "progress",
        "Lkotlin/Function1;",
        "Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine$Companion;

.field private static final log:Lcom/otaliastudios/transcoder/internal/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine;->Companion:Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine$Companion;

    .line 18
    new-instance v0, Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "ThumbnailsEngine"

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLog$cp()Lcom/otaliastudios/transcoder/internal/utils/Logger;
    .registers 1

    .line 11
    sget-object v0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    return-object v0
.end method

.method public static final thumbnails(Lcom/otaliastudios/transcoder/ThumbnailerOptions;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine;->Companion:Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine$Companion;

    invoke-virtual {v0, p0}, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine$Companion;->thumbnails(Lcom/otaliastudios/transcoder/ThumbnailerOptions;)V

    return-void
.end method


# virtual methods
.method public abstract cleanup()V
.end method

.method public abstract thumbnails(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method
