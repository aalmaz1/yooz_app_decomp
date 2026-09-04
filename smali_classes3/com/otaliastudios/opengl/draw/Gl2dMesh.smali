.class public Lcom/otaliastudios/opengl/draw/Gl2dMesh;
.super Lcom/otaliastudios/opengl/draw/Gl2dDrawable;
.source "Gl2dMesh.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGl2dMesh.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Gl2dMesh.kt\ncom/otaliastudios/opengl/draw/Gl2dMesh\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 gl.kt\ncom/otaliastudios/opengl/internal/GlKt\n*L\n1#1,130:1\n1547#2:131\n1618#2,3:132\n1000#2,2:135\n2468#2,3:137\n1849#2,2:140\n112#3:142\n*S KotlinDebug\n*F\n+ 1 Gl2dMesh.kt\ncom/otaliastudios/opengl/draw/Gl2dMesh\n*L\n18#1:131\n18#1:132,3\n47#1:135,2\n50#1:137,3\n113#1:140,2\n121#1:142\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\r\u001a\u00020\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0008\u0010\u0012\u001a\u00020\u000eH\u0016J\u0008\u0010\u0013\u001a\u00020\u000eH\u0016J\u0018\u0010\u0014\u001a\u00020\u000e2\u0010\u0010\u0015\u001a\u000c\u0012\u0008\u0012\u00060\u0016j\u0002`\u00170\u0010J\"\u0010\u0014\u001a\u00020\u000e2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00102\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0010R\u001e\u0010\u0003\u001a\u00060\u0004j\u0002`\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0016\u0010\n\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/draw/Gl2dMesh;",
        "Lcom/otaliastudios/opengl/draw/Gl2dDrawable;",
        "()V",
        "vertexArray",
        "Ljava/nio/FloatBuffer;",
        "Lcom/otaliastudios/opengl/types/FloatBuffer;",
        "getVertexArray",
        "()Ljava/nio/FloatBuffer;",
        "setVertexArray",
        "(Ljava/nio/FloatBuffer;)V",
        "vertexIndices",
        "Ljava/nio/ByteBuffer;",
        "Lcom/otaliastudios/opengl/types/ByteBuffer;",
        "computeIndicesFromIndexedSegments",
        "",
        "segments",
        "",
        "Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;",
        "draw",
        "release",
        "setPoints",
        "points",
        "Landroid/graphics/PointF;",
        "Lcom/otaliastudios/opengl/geometry/PointF;",
        "x",
        "",
        "y",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private vertexArray:Ljava/nio/FloatBuffer;

.field private vertexIndices:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/otaliastudios/opengl/draw/Gl2dDrawable;-><init>()V

    const/4 v0, 0x6

    .line 14
    invoke-static {v0}, Lcom/otaliastudios/opengl/types/BuffersJvmKt;->floatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/opengl/draw/Gl2dMesh;->vertexArray:Ljava/nio/FloatBuffer;

    return-void
.end method

.method private final computeIndicesFromIndexedSegments(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 64
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_d

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v6, v5, 0x1

    .line 65
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;

    .line 68
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_b

    move v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    add-int/lit8 v11, v8, 0x1

    if-eqz v9, :cond_0

    if-eqz v10, :cond_0

    goto/16 :goto_5

    .line 70
    :cond_0
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;

    .line 74
    invoke-virtual {v8}, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->getI()I

    move-result v12

    invoke-virtual {v5, v12}, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->hasIndex(I)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 76
    invoke-virtual {v8}, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->getJ()I

    move-result v12

    .line 77
    invoke-virtual {v8}, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->getJx()F

    move-result v13

    .line 78
    invoke-virtual {v8}, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->getJy()F

    move-result v8

    goto :goto_2

    .line 79
    :cond_1
    invoke-virtual {v8}, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->getJ()I

    move-result v12

    invoke-virtual {v5, v12}, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->hasIndex(I)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 81
    invoke-virtual {v8}, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->getI()I

    move-result v12

    .line 82
    invoke-virtual {v8}, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->getIx()F

    move-result v13

    .line 83
    invoke-virtual {v8}, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->getIy()F

    move-result v8

    .line 93
    :goto_2
    invoke-virtual {v5, v13, v8}, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->orientation(FF)I

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_4

    :cond_2
    if-lez v8, :cond_3

    if-eqz v9, :cond_3

    goto :goto_4

    :cond_3
    if-gez v8, :cond_4

    if-eqz v10, :cond_4

    goto :goto_4

    .line 97
    :cond_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_9

    move v14, v11

    :goto_3
    add-int/lit8 v15, v14, 0x1

    .line 98
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;

    .line 99
    invoke-virtual {v14, v12}, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->hasIndex(I)Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-virtual {v5}, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->getI()I

    move-result v4

    invoke-virtual {v14, v4}, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->hasIndex(I)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v5}, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->getJ()I

    move-result v4

    invoke-virtual {v14, v4}, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->hasIndex(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 101
    :cond_5
    invoke-virtual {v5}, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->getI()I

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {v5}, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->getJ()I

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    int-to-byte v4, v12

    .line 103
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    if-lez v8, :cond_6

    move v9, v4

    :cond_6
    if-gez v8, :cond_9

    move v10, v4

    goto :goto_4

    :cond_7
    if-lt v15, v13, :cond_8

    goto :goto_4

    :cond_8
    move v14, v15

    goto :goto_3

    :cond_9
    :goto_4
    if-lt v11, v7, :cond_a

    goto :goto_5

    :cond_a
    move v8, v11

    goto/16 :goto_1

    :cond_b
    :goto_5
    if-le v6, v3, :cond_c

    goto :goto_6

    :cond_c
    move v5, v6

    goto/16 :goto_0

    .line 111
    :cond_d
    :goto_6
    iget-object v1, v0, Lcom/otaliastudios/opengl/draw/Gl2dMesh;->vertexIndices:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_e

    goto :goto_7

    :cond_e
    check-cast v1, Ljava/nio/Buffer;

    invoke-static {v1}, Lcom/otaliastudios/opengl/types/BuffersKt;->dispose(Ljava/nio/Buffer;)V

    .line 112
    :goto_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/otaliastudios/opengl/types/BuffersJvmKt;->byteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 113
    check-cast v2, Ljava/lang/Iterable;

    .line 140
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    move-result v3

    .line 113
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_8

    .line 114
    :cond_f
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 115
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 112
    iput-object v1, v0, Lcom/otaliastudios/opengl/draw/Gl2dMesh;->vertexIndices:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/otaliastudios/opengl/draw/Gl2dMesh;->vertexIndices:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "glDrawElements start"

    .line 120
    invoke-static {v1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_TRIANGLES()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_UNSIGNED_BYTE()I

    move-result v3

    .line 142
    check-cast v0, Ljava/nio/Buffer;

    invoke-static {v1, v2, v3, v0}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    const-string v0, "glDrawElements end"

    .line 122
    invoke-static {v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getVertexArray()Ljava/nio/FloatBuffer;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/otaliastudios/opengl/draw/Gl2dMesh;->vertexArray:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public release()V
    .locals 1

    .line 127
    invoke-super {p0}, Lcom/otaliastudios/opengl/draw/Gl2dDrawable;->release()V

    .line 128
    iget-object v0, p0, Lcom/otaliastudios/opengl/draw/Gl2dMesh;->vertexIndices:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/nio/Buffer;

    invoke-static {v0}, Lcom/otaliastudios/opengl/types/BuffersKt;->dispose(Ljava/nio/Buffer;)V

    :goto_0
    return-void
.end method

.method public final setPoints(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    const-string v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    check-cast p1, Ljava/lang/Iterable;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 132
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 133
    check-cast v3, Landroid/graphics/PointF;

    .line 18
    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 132
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 133
    check-cast v1, Landroid/graphics/PointF;

    .line 18
    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 134
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 18
    invoke-virtual {p0, v0, v2}, Lcom/otaliastudios/opengl/draw/Gl2dMesh;->setPoints(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final setPoints(Ljava/util/List;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "x"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "y"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_b

    .line 23
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v4, v3, 0x2

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/otaliastudios/opengl/draw/Gl2dMesh;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v5

    if-ge v5, v4, :cond_0

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/otaliastudios/opengl/draw/Gl2dMesh;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v5

    check-cast v5, Ljava/nio/Buffer;

    invoke-static {v5}, Lcom/otaliastudios/opengl/types/BuffersKt;->dispose(Ljava/nio/Buffer;)V

    .line 27
    invoke-static {v4}, Lcom/otaliastudios/opengl/types/BuffersJvmKt;->floatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/otaliastudios/opengl/draw/Gl2dMesh;->setVertexArray(Ljava/nio/FloatBuffer;)V

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/otaliastudios/opengl/draw/Gl2dMesh;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 31
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    if-lez v3, :cond_4

    const/4 v13, 0x0

    :goto_1
    add-int/lit8 v14, v13, 0x1

    .line 33
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v15

    .line 34
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v12

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/otaliastudios/opengl/draw/Gl2dMesh;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/otaliastudios/opengl/draw/Gl2dMesh;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    if-ge v14, v3, :cond_2

    move v8, v14

    :goto_2
    add-int/lit8 v11, v8, 0x1

    .line 38
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v16

    .line 39
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v17

    .line 40
    new-instance v10, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;

    move-object v6, v10

    move v7, v13

    move v9, v15

    move-object v5, v10

    move v10, v12

    move v1, v11

    move/from16 v11, v16

    move/from16 v16, v12

    move/from16 v12, v17

    invoke-direct/range {v6 .. v12}, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;-><init>(IIFFFF)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lt v1, v3, :cond_1

    goto :goto_3

    :cond_1
    move v8, v1

    move/from16 v12, v16

    move-object/from16 v1, p1

    goto :goto_2

    :cond_2
    :goto_3
    if-lt v14, v3, :cond_3

    goto :goto_4

    :cond_3
    move-object/from16 v1, p1

    move v13, v14

    goto :goto_1

    .line 43
    :cond_4
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/otaliastudios/opengl/draw/Gl2dMesh;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/otaliastudios/opengl/draw/Gl2dMesh;->notifyVertexArrayChange()V

    .line 135
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    new-instance v1, Lcom/otaliastudios/opengl/draw/Gl2dMesh$setPoints$$inlined$sortBy$1;

    invoke-direct {v1}, Lcom/otaliastudios/opengl/draw/Gl2dMesh$setPoints$$inlined$sortBy$1;-><init>()V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v4, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 48
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 49
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;

    .line 50
    move-object v5, v1

    check-cast v5, Ljava/lang/Iterable;

    .line 137
    instance-of v6, v5, Ljava/util/Collection;

    if-eqz v6, :cond_8

    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    move v5, v2

    goto :goto_6

    .line 138
    :cond_8
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;

    .line 50
    move-object v7, v4

    check-cast v7, Lcom/otaliastudios/opengl/geometry/SegmentF;

    invoke-virtual {v6, v7}, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->intersects(Lcom/otaliastudios/opengl/geometry/SegmentF;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v5, 0x0

    :goto_6
    if-eqz v5, :cond_6

    .line 51
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 54
    :cond_a
    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/draw/Gl2dMesh;->computeIndicesFromIndexedSegments(Ljava/util/List;)V

    return-void

    .line 22
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "x.size != y.size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setVertexArray(Ljava/nio/FloatBuffer;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/otaliastudios/opengl/draw/Gl2dMesh;->vertexArray:Ljava/nio/FloatBuffer;

    return-void
.end method
