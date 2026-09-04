.class public Lcom/otaliastudios/transcoder/common/ExactSize;
.super Lcom/otaliastudios/transcoder/common/Size;
.source "ExactSize.java"


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/transcoder/common/Size;-><init>(II)V

    .line 18
    iput p1, p0, Lcom/otaliastudios/transcoder/common/ExactSize;->mWidth:I

    .line 19
    iput p2, p0, Lcom/otaliastudios/transcoder/common/ExactSize;->mHeight:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/otaliastudios/transcoder/common/ExactSize;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/otaliastudios/transcoder/common/ExactSize;->mWidth:I

    return v0
.end method
