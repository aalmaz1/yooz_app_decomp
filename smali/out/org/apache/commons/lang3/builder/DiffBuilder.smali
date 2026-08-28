.class public Lorg/apache/commons/lang3/builder/DiffBuilder;
.super Ljava/lang/Object;
.source "DiffBuilder.java"

# interfaces
.implements Lorg/apache/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/builder/Builder<",
        "Lorg/apache/commons/lang3/builder/DiffResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final diffs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/lang3/builder/Diff<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final left:Ljava/lang/Object;

.field private final objectsTriviallyEqual:Z

.field private final right:Ljava/lang/Object;

.field private final style:Lorg/apache/commons/lang3/builder/ToStringStyle;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)V
    .registers 5

    const/4 v0, 0x1

    .line 147
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang3/builder/DiffBuilder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;Z)V
    .registers 10

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    const-string v3, "lhs cannot be null"

    new-array v4, v1, [Ljava/lang/Object;

    .line 106
    invoke-static {v2, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_15

    move v2, v0

    goto :goto_16

    :cond_15
    move v2, v1

    :goto_16
    const-string v3, "rhs cannot be null"

    new-array v4, v1, [Ljava/lang/Object;

    .line 107
    invoke-static {v2, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->diffs:Ljava/util/List;

    .line 110
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->left:Ljava/lang/Object;

    .line 111
    iput-object p2, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->right:Ljava/lang/Object;

    .line 112
    iput-object p3, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    if-eqz p4, :cond_35

    if-eq p1, p2, :cond_36

    .line 115
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    goto :goto_36

    :cond_35
    move v0, v1

    :cond_36
    :goto_36
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->objectsTriviallyEqual:Z

    return-void
.end method

.method private validateFieldNameNotNull(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_6

    :cond_5
    move p1, v0

    :goto_6
    const-string v1, "Field name cannot be null"

    new-array v0, v0, [Ljava/lang/Object;

    .line 980
    invoke-static {p1, v1, v0}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;BB)Lorg/apache/commons/lang3/builder/DiffBuilder;
    .registers 6

    .line 246
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 247
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_8

    return-object p0

    :cond_8
    if-eq p2, p3, :cond_14

    .line 251
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/DiffBuilder$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/DiffBuilder$3;-><init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;BB)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    return-object p0
.end method

.method public append(Ljava/lang/String;CC)Lorg/apache/commons/lang3/builder/DiffBuilder;
    .registers 6

    .line 325
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 327
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_8

    return-object p0

    :cond_8
    if-eq p2, p3, :cond_14

    .line 331
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/DiffBuilder$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/DiffBuilder$5;-><init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;CC)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    return-object p0
.end method

.method public append(Ljava/lang/String;DD)Lorg/apache/commons/lang3/builder/DiffBuilder;
    .registers 15

    .line 405
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 407
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_8

    return-object p0

    .line 410
    :cond_8
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_23

    .line 411
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v8, Lorg/apache/commons/lang3/builder/DiffBuilder$7;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/lang3/builder/DiffBuilder$7;-><init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;DD)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    return-object p0
.end method

.method public append(Ljava/lang/String;FF)Lorg/apache/commons/lang3/builder/DiffBuilder;
    .registers 6

    .line 485
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 487
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_8

    return-object p0

    .line 490
    :cond_8
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_1c

    .line 491
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/DiffBuilder$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/DiffBuilder$9;-><init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    return-object p0
.end method

.method public append(Ljava/lang/String;II)Lorg/apache/commons/lang3/builder/DiffBuilder;
    .registers 6

    .line 565
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 567
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_8

    return-object p0

    :cond_8
    if-eq p2, p3, :cond_14

    .line 571
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/DiffBuilder$11;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/DiffBuilder$11;-><init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    return-object p0
.end method

.method public append(Ljava/lang/String;JJ)Lorg/apache/commons/lang3/builder/DiffBuilder;
    .registers 15

    .line 645
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 647
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_8

    return-object p0

    :cond_8
    cmp-long v0, p2, p4

    if-eqz v0, :cond_1b

    .line 651
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v8, Lorg/apache/commons/lang3/builder/DiffBuilder$13;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/lang3/builder/DiffBuilder$13;-><init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;JJ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/DiffBuilder;
    .registers 6

    .line 805
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 806
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_8

    return-object p0

    :cond_8
    if-ne p2, p3, :cond_b

    return-object p0

    :cond_b
    if-eqz p2, :cond_f

    move-object v0, p2

    goto :goto_10

    :cond_f
    move-object v0, p3

    .line 821
    :goto_10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 822
    instance-of v1, v0, [Z

    if-eqz v1, :cond_2b

    .line 823
    check-cast p2, [Z

    check-cast p2, [Z

    check-cast p3, [Z

    check-cast p3, [Z

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/DiffBuilder;->append(Ljava/lang/String;[Z[Z)Lorg/apache/commons/lang3/builder/DiffBuilder;

    move-result-object p1

    return-object p1

    .line 825
    :cond_2b
    instance-of v1, v0, [B

    if-eqz v1, :cond_3c

    .line 826
    check-cast p2, [B

    check-cast p2, [B

    check-cast p3, [B

    check-cast p3, [B

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/DiffBuilder;->append(Ljava/lang/String;[B[B)Lorg/apache/commons/lang3/builder/DiffBuilder;

    move-result-object p1

    return-object p1

    .line 828
    :cond_3c
    instance-of v1, v0, [C

    if-eqz v1, :cond_4d

    .line 829
    check-cast p2, [C

    check-cast p2, [C

    check-cast p3, [C

    check-cast p3, [C

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/DiffBuilder;->append(Ljava/lang/String;[C[C)Lorg/apache/commons/lang3/builder/DiffBuilder;

    move-result-object p1

    return-object p1

    .line 831
    :cond_4d
    instance-of v1, v0, [D

    if-eqz v1, :cond_5e

    .line 832
    check-cast p2, [D

    check-cast p2, [D

    check-cast p3, [D

    check-cast p3, [D

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/DiffBuilder;->append(Ljava/lang/String;[D[D)Lorg/apache/commons/lang3/builder/DiffBuilder;

    move-result-object p1

    return-object p1

    .line 834
    :cond_5e
    instance-of v1, v0, [F

    if-eqz v1, :cond_6f

    .line 835
    check-cast p2, [F

    check-cast p2, [F

    check-cast p3, [F

    check-cast p3, [F

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/DiffBuilder;->append(Ljava/lang/String;[F[F)Lorg/apache/commons/lang3/builder/DiffBuilder;

    move-result-object p1

    return-object p1

    .line 837
    :cond_6f
    instance-of v1, v0, [I

    if-eqz v1, :cond_80

    .line 838
    check-cast p2, [I

    check-cast p2, [I

    check-cast p3, [I

    check-cast p3, [I

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/DiffBuilder;->append(Ljava/lang/String;[I[I)Lorg/apache/commons/lang3/builder/DiffBuilder;

    move-result-object p1

    return-object p1

    .line 840
    :cond_80
    instance-of v1, v0, [J

    if-eqz v1, :cond_91

    .line 841
    check-cast p2, [J

    check-cast p2, [J

    check-cast p3, [J

    check-cast p3, [J

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/DiffBuilder;->append(Ljava/lang/String;[J[J)Lorg/apache/commons/lang3/builder/DiffBuilder;

    move-result-object p1

    return-object p1

    .line 843
    :cond_91
    instance-of v0, v0, [S

    if-eqz v0, :cond_a2

    .line 844
    check-cast p2, [S

    check-cast p2, [S

    check-cast p3, [S

    check-cast p3, [S

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/DiffBuilder;->append(Ljava/lang/String;[S[S)Lorg/apache/commons/lang3/builder/DiffBuilder;

    move-result-object p1

    return-object p1

    .line 847
    :cond_a2
    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    check-cast p3, [Ljava/lang/Object;

    check-cast p3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/DiffBuilder;->append(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/DiffBuilder;

    move-result-object p1

    return-object p1

    :cond_af
    if-eqz p2, :cond_b8

    .line 851
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    return-object p0

    .line 855
    :cond_b8
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/DiffBuilder$17;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/DiffBuilder$17;-><init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public append(Ljava/lang/String;Lorg/apache/commons/lang3/builder/DiffResult;)Lorg/apache/commons/lang3/builder/DiffBuilder;
    .registers 6

    .line 951
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    move v1, v0

    :goto_9
    const-string v2, "Diff result cannot be null"

    new-array v0, v0, [Ljava/lang/Object;

    .line 952
    invoke-static {v1, v2, v0}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 953
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_15

    return-object p0

    .line 957
    :cond_15
    invoke-virtual {p2}, Lorg/apache/commons/lang3/builder/DiffResult;->getDiffs()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/builder/Diff;

    .line 958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/Diff;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/Diff;->getLeft()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/Diff;->getRight()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/commons/lang3/builder/DiffBuilder;->append(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/DiffBuilder;

    goto :goto_1d

    :cond_50
    return-object p0
.end method

.method public append(Ljava/lang/String;SS)Lorg/apache/commons/lang3/builder/DiffBuilder;
    .registers 6

    .line 725
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 727
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_8

    return-object p0

    :cond_8
    if-eq p2, p3, :cond_14

    .line 731
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/DiffBuilder$15;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/DiffBuilder$15;-><init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;SS)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    return-object p0
.end method

.method public append(Ljava/lang/String;ZZ)Lorg/apache/commons/lang3/builder/DiffBuilder;
    .registers 6

    .line 167
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 169
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_8

    return-object p0

    :cond_8
    if-eq p2, p3, :cond_14

    .line 173
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/DiffBuilder$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/DiffBuilder$1;-><init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;ZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    return-object p0
.end method

.method public append(Ljava/lang/String;[B[B)Lorg/apache/commons/lang3/builder/DiffBuilder;
    .registers 6

    .line 285
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 287
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_8

    return-object p0

    .line 290
    :cond_8
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_18

    .line 291
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/DiffBuilder$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/DiffBuilder$4;-><init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;[B[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    return-object p0
.end method

.method public append(Ljava/lang/String;[C[C)Lorg/apache/commons/lang3/builder/DiffBuilder;
    .registers 6

    .line 365
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 367
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_8

    return-object p0

    .line 370
    :cond_8
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    if-nez v0, :cond_18

    .line 371
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/DiffBuilder$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/DiffBuilder$6;-><init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;[C[C)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    return-object p0
.end method

.method public append(Ljava/lang/String;[D[D)Lorg/apache/commons/lang3/builder/DiffBuilder;
    .registers 6

    .line 445
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 447
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_8

    return-object p0

    .line 450
    :cond_8
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    if-nez v0, :cond_18

    .line 451
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/DiffBuilder$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/DiffBuilder$8;-><init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;[D[D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    return-object p0
.end method

.method public append(Ljava/lang/String;[F[F)Lorg/apache/commons/lang3/builder/DiffBuilder;
    .registers 6

    .line 525
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 527
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_8

    return-object p0

    .line 530
    :cond_8
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-nez v0, :cond_18

    .line 531
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/DiffBuilder$10;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/DiffBuilder$10;-><init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;[F[F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    return-object p0
.end method

.method public append(Ljava/lang/String;[I[I)Lorg/apache/commons/lang3/builder/DiffBuilder;
    .registers 6

    .line 605
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 607
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_8

    return-object p0

    .line 610
    :cond_8
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 611
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/DiffBuilder$12;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/DiffBuilder$12;-><init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;[I[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    return-object p0
.end method

.method public append(Ljava/lang/String;[J[J)Lorg/apache/commons/lang3/builder/DiffBuilder;
    .registers 6

    .line 685
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 687
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_8

    return-object p0

    .line 690
    :cond_8
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-nez v0, :cond_18

    .line 691
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/DiffBuilder$14;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/DiffBuilder$14;-><init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;[J[J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    return-object p0
.end method

.method public append(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/DiffBuilder;
    .registers 6

    .line 889
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 890
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_8

    return-object p0

    .line 894
    :cond_8
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 895
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/DiffBuilder$18;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/DiffBuilder$18;-><init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    return-object p0
.end method

.method public append(Ljava/lang/String;[S[S)Lorg/apache/commons/lang3/builder/DiffBuilder;
    .registers 6

    .line 765
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 767
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_8

    return-object p0

    .line 770
    :cond_8
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v0

    if-nez v0, :cond_18

    .line 771
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/DiffBuilder$16;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/DiffBuilder$16;-><init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;[S[S)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    return-object p0
.end method

.method public append(Ljava/lang/String;[Z[Z)Lorg/apache/commons/lang3/builder/DiffBuilder;
    .registers 6

    .line 207
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/DiffBuilder;->validateFieldNameNotNull(Ljava/lang/String;)V

    .line 208
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->objectsTriviallyEqual:Z

    if-eqz v0, :cond_8

    return-object p0

    .line 211
    :cond_8
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    if-nez v0, :cond_18

    .line 212
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->diffs:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/builder/DiffBuilder$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/DiffBuilder$2;-><init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;[Z[Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 67
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/DiffBuilder;->build()Lorg/apache/commons/lang3/builder/DiffResult;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/commons/lang3/builder/DiffResult;
    .registers 6

    .line 976
    new-instance v0, Lorg/apache/commons/lang3/builder/DiffResult;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->left:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->right:Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->diffs:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/commons/lang3/builder/DiffBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/lang3/builder/DiffResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;Lorg/apache/commons/lang3/builder/ToStringStyle;)V

    return-object v0
.end method
