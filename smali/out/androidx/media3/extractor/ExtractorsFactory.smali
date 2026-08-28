.class public interface abstract Landroidx/media3/extractor/ExtractorsFactory;
.super Ljava/lang/Object;
.source "ExtractorsFactory.java"


# static fields
.field public static final EMPTY:Landroidx/media3/extractor/ExtractorsFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Landroidx/media3/extractor/ExtractorsFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/extractor/ExtractorsFactory$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/extractor/ExtractorsFactory;->EMPTY:Landroidx/media3/extractor/ExtractorsFactory;

    return-void
.end method

.method public static synthetic lambda$static$0()[Landroidx/media3/extractor/Extractor;
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    return-object v0
.end method


# virtual methods
.method public abstract createExtractors()[Landroidx/media3/extractor/Extractor;
.end method

.method public createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Landroidx/media3/extractor/Extractor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Landroidx/media3/extractor/Extractor;"
        }
    .end annotation

    .line 81
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorsFactory;->createExtractors()[Landroidx/media3/extractor/Extractor;

    move-result-object p1

    return-object p1
.end method

.method public experimentalSetTextTrackTranscodingEnabled(Z)Landroidx/media3/extractor/ExtractorsFactory;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setSubtitleParserFactory(Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/extractor/ExtractorsFactory;
    .registers 2

    return-object p0
.end method
