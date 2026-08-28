.class public final Lcom/fluttercandies/flutter_image_compress/logger/LogExtKt;
.super Ljava/lang/Object;
.source "LogExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "log",
        "",
        "any",
        "",
        "flutter_image_compress_common_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final log(Ljava/lang/Object;)V
    .registers 2

    .line 7
    sget-object v0, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin;->Companion:Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin$Companion;

    invoke-virtual {v0}, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin$Companion;->getShowLog()Z

    move-result v0

    if-eqz v0, :cond_17

    if-eqz p0, :cond_10

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_12

    :cond_10
    const-string p0, "null"

    :cond_12
    const-string v0, "flutter_image_compress"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    return-void
.end method
