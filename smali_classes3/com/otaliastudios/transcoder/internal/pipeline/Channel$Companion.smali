.class public final Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;
.super Ljava/lang/Object;
.source "Step.kt"

# interfaces
.implements Lcom/otaliastudios/transcoder/internal/pipeline/Channel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/transcoder/internal/pipeline/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        "()V",
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
.field static final synthetic $$INSTANCE:Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;

    invoke-direct {v0}, Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;-><init>()V

    sput-object v0, Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;->$$INSTANCE:Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
