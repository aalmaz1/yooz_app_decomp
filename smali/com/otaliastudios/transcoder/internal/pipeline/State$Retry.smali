.class public final Lcom/otaliastudios/transcoder/internal/pipeline/State$Retry;
.super Lcom/otaliastudios/transcoder/internal/pipeline/State;
.source "State.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/transcoder/internal/pipeline/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Retry"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/pipeline/State$Retry;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/State;",
        "",
        "()V",
        "toString",
        "",
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
.field public static final INSTANCE:Lcom/otaliastudios/transcoder/internal/pipeline/State$Retry;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/otaliastudios/transcoder/internal/pipeline/State$Retry;

    invoke-direct {v0}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Retry;-><init>()V

    sput-object v0, Lcom/otaliastudios/transcoder/internal/pipeline/State$Retry;->INSTANCE:Lcom/otaliastudios/transcoder/internal/pipeline/State$Retry;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0}, Lcom/otaliastudios/transcoder/internal/pipeline/State;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "State.Retry"

    return-object v0
.end method
