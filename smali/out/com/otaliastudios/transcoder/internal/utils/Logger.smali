.class public Lcom/otaliastudios/transcoder/internal/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/transcoder/internal/utils/Logger$LogLevel;
    }
.end annotation


# static fields
.field public static final LEVEL_ERROR:I = 0x3

.field public static final LEVEL_INFO:I = 0x1

.field public static final LEVEL_VERBOSE:I = 0x0

.field public static final LEVEL_WARNING:I = 0x2

.field private static sLevel:I


# instance fields
.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/utils/Logger;->mTag:Ljava/lang/String;

    return-void
.end method

.method private log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 87
    invoke-direct {p0, p1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->should(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_25

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_19

    const/4 v0, 0x3

    if-eq p1, v0, :cond_13

    goto :goto_2a

    .line 92
    :cond_13
    iget-object p1, p0, Lcom/otaliastudios/transcoder/internal/utils/Logger;->mTag:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    .line 91
    :cond_19
    iget-object p1, p0, Lcom/otaliastudios/transcoder/internal/utils/Logger;->mTag:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    .line 90
    :cond_1f
    iget-object p1, p0, Lcom/otaliastudios/transcoder/internal/utils/Logger;->mTag:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    .line 89
    :cond_25
    iget-object p1, p0, Lcom/otaliastudios/transcoder/internal/utils/Logger;->mTag:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2a
    return-void
.end method

.method public static setLogLevel(I)V
    .registers 1

    .line 54
    sput p0, Lcom/otaliastudios/transcoder/internal/utils/Logger;->sLevel:I

    return-void
.end method

.method private should(I)Z
    .registers 3

    .line 58
    sget v0, Lcom/otaliastudios/transcoder/internal/utils/Logger;->sLevel:I

    if-gt v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method


# virtual methods
.method public e(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x3

    .line 83
    invoke-direct {p0, v0, p1, p2}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x1

    .line 75
    invoke-direct {p0, v0, p1, p2}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, v0, p1, p2}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x2

    .line 79
    invoke-direct {p0, v0, p1, p2}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
