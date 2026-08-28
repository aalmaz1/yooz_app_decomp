.class public Lcom/otaliastudios/transcoder/resize/ExactResizer;
.super Ljava/lang/Object;
.source "ExactResizer.java"

# interfaces
.implements Lcom/otaliastudios/transcoder/resize/Resizer;


# instance fields
.field private final output:Lcom/otaliastudios/transcoder/common/Size;


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/otaliastudios/transcoder/common/Size;

    invoke-direct {v0, p1, p2}, Lcom/otaliastudios/transcoder/common/Size;-><init>(II)V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/resize/ExactResizer;->output:Lcom/otaliastudios/transcoder/common/Size;

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/transcoder/common/Size;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/otaliastudios/transcoder/resize/ExactResizer;->output:Lcom/otaliastudios/transcoder/common/Size;

    return-void
.end method


# virtual methods
.method public getOutputSize(Lcom/otaliastudios/transcoder/common/Size;)Lcom/otaliastudios/transcoder/common/Size;
    .registers 2

    .line 31
    iget-object p1, p0, Lcom/otaliastudios/transcoder/resize/ExactResizer;->output:Lcom/otaliastudios/transcoder/common/Size;

    return-object p1
.end method
