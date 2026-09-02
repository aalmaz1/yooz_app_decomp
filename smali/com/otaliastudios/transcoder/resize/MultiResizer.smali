.class public Lcom/otaliastudios/transcoder/resize/MultiResizer;
.super Ljava/lang/Object;
.source "MultiResizer.java"

# interfaces
.implements Lcom/otaliastudios/transcoder/resize/Resizer;


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/resize/Resizer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/resize/MultiResizer;->list:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>([Lcom/otaliastudios/transcoder/resize/Resizer;)V
    .registers 5

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/resize/MultiResizer;->list:Ljava/util/List;

    .line 24
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_16

    aget-object v2, p1, v1

    .line 25
    invoke-virtual {p0, v2}, Lcom/otaliastudios/transcoder/resize/MultiResizer;->addResizer(Lcom/otaliastudios/transcoder/resize/Resizer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_16
    return-void
.end method


# virtual methods
.method public addResizer(Lcom/otaliastudios/transcoder/resize/Resizer;)V
    .registers 3

    .line 30
    iget-object v0, p0, Lcom/otaliastudios/transcoder/resize/MultiResizer;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getOutputSize(Lcom/otaliastudios/transcoder/common/Size;)Lcom/otaliastudios/transcoder/common/Size;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/otaliastudios/transcoder/resize/MultiResizer;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/transcoder/resize/Resizer;

    .line 38
    invoke-interface {v1, p1}, Lcom/otaliastudios/transcoder/resize/Resizer;->getOutputSize(Lcom/otaliastudios/transcoder/common/Size;)Lcom/otaliastudios/transcoder/common/Size;

    move-result-object p1

    goto :goto_6

    :cond_17
    return-object p1
.end method
