.class final Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Companion$build$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Pipeline.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Companion;->build$lib_release$default(Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Companion;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder<",
        "Lkotlin/Unit;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;",
        "",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;"
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
.field public static final INSTANCE:Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Companion$build$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Companion$build$1;

    invoke-direct {v0}, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Companion$build$1;-><init>()V

    sput-object v0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Companion$build$1;->INSTANCE:Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Companion$build$1;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder<",
            "Lkotlin/Unit;",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 61
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Companion$build$1;->invoke()Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;

    move-result-object v0

    return-object v0
.end method
