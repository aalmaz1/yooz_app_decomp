.class public final Lcom/otaliastudios/transcoder/internal/utils/EosKt;
.super Ljava/lang/Object;
.source "eos.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0000\u001a\u001a\u0010\u0005\u001a\u00020\u0006*\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "forcingEos",
        "Lcom/otaliastudios/transcoder/source/DataSource;",
        "force",
        "Lkotlin/Function0;",
        "",
        "ignoringEos",
        "Lcom/otaliastudios/transcoder/sink/DataSink;",
        "ignore",
        "lib_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final forcingEos(Lcom/otaliastudios/transcoder/source/DataSource;Lkotlin/jvm/functions/Function0;)Lcom/otaliastudios/transcoder/source/DataSource;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/transcoder/source/DataSource;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/otaliastudios/transcoder/source/DataSource;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "force"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/otaliastudios/transcoder/internal/utils/EosForcingDataSource;

    invoke-direct {v0, p0, p1}, Lcom/otaliastudios/transcoder/internal/utils/EosForcingDataSource;-><init>(Lcom/otaliastudios/transcoder/source/DataSource;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lcom/otaliastudios/transcoder/source/DataSource;

    return-object v0
.end method

.method public static final ignoringEos(Lcom/otaliastudios/transcoder/sink/DataSink;Lkotlin/jvm/functions/Function0;)Lcom/otaliastudios/transcoder/sink/DataSink;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/transcoder/sink/DataSink;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/otaliastudios/transcoder/sink/DataSink;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ignore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/otaliastudios/transcoder/internal/utils/EosIgnoringDataSink;

    invoke-direct {v0, p0, p1}, Lcom/otaliastudios/transcoder/internal/utils/EosIgnoringDataSink;-><init>(Lcom/otaliastudios/transcoder/sink/DataSink;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lcom/otaliastudios/transcoder/sink/DataSink;

    return-object v0
.end method
