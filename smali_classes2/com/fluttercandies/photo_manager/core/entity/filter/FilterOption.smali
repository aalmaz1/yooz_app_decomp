.class public abstract Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;
.super Ljava/lang/Object;
.source "FilterOption.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J2\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\u00080\u000cj\u0008\u0012\u0004\u0012\u00020\u0008`\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0004H&J\n\u0010\u000f\u001a\u0004\u0018\u00010\u0008H&R\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;",
        "",
        "()V",
        "containsPathModified",
        "",
        "getContainsPathModified",
        "()Z",
        "makeWhere",
        "",
        "requestType",
        "",
        "args",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "needAnd",
        "orderByCondString",
        "photo_manager_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic makeWhere$default(Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;ILjava/util/ArrayList;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;->makeWhere(ILjava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: makeWhere"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract getContainsPathModified()Z
.end method

.method public abstract makeWhere(ILjava/util/ArrayList;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract orderByCondString()Ljava/lang/String;
.end method
