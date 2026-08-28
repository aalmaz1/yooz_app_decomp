.class public final Landroidx/media3/extractor/mp4/UnsupportedBrandsSniffFailure;
.super Ljava/lang/Object;
.source "UnsupportedBrandsSniffFailure.java"

# interfaces
.implements Landroidx/media3/extractor/SniffFailure;


# instance fields
.field public final compatibleBrands:Lcom/google/common/primitives/ImmutableIntArray;

.field public final majorBrand:I


# direct methods
.method public constructor <init>(I[I)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Landroidx/media3/extractor/mp4/UnsupportedBrandsSniffFailure;->majorBrand:I

    if-eqz p2, :cond_c

    .line 40
    invoke-static {p2}, Lcom/google/common/primitives/ImmutableIntArray;->copyOf([I)Lcom/google/common/primitives/ImmutableIntArray;

    move-result-object p1

    goto :goto_10

    .line 41
    :cond_c
    invoke-static {}, Lcom/google/common/primitives/ImmutableIntArray;->of()Lcom/google/common/primitives/ImmutableIntArray;

    move-result-object p1

    :goto_10
    iput-object p1, p0, Landroidx/media3/extractor/mp4/UnsupportedBrandsSniffFailure;->compatibleBrands:Lcom/google/common/primitives/ImmutableIntArray;

    return-void
.end method
