.class public Lorg/apache/commons/lang3/builder/CompareToBuilder;
.super Ljava/lang/Object;
.source "CompareToBuilder.java"

# interfaces
.implements Lorg/apache/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/builder/Builder<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private comparison:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-void
.end method

.method private appendArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "*>;)V"
        }
    .end annotation

    .line 442
    instance-of v0, p1, [J

    if-eqz v0, :cond_11

    .line 443
    check-cast p1, [J

    check-cast p1, [J

    check-cast p2, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([J[J)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto/16 :goto_8d

    .line 444
    :cond_11
    instance-of v0, p1, [I

    if-eqz v0, :cond_22

    .line 445
    check-cast p1, [I

    check-cast p1, [I

    check-cast p2, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([I[I)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto/16 :goto_8d

    .line 446
    :cond_22
    instance-of v0, p1, [S

    if-eqz v0, :cond_32

    .line 447
    check-cast p1, [S

    check-cast p1, [S

    check-cast p2, [S

    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([S[S)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_8d

    .line 448
    :cond_32
    instance-of v0, p1, [C

    if-eqz v0, :cond_42

    .line 449
    check-cast p1, [C

    check-cast p1, [C

    check-cast p2, [C

    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([C[C)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_8d

    .line 450
    :cond_42
    instance-of v0, p1, [B

    if-eqz v0, :cond_52

    .line 451
    check-cast p1, [B

    check-cast p1, [B

    check-cast p2, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([B[B)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_8d

    .line 452
    :cond_52
    instance-of v0, p1, [D

    if-eqz v0, :cond_62

    .line 453
    check-cast p1, [D

    check-cast p1, [D

    check-cast p2, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([D[D)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_8d

    .line 454
    :cond_62
    instance-of v0, p1, [F

    if-eqz v0, :cond_72

    .line 455
    check-cast p1, [F

    check-cast p1, [F

    check-cast p2, [F

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([F[F)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_8d

    .line 456
    :cond_72
    instance-of v0, p1, [Z

    if-eqz v0, :cond_82

    .line 457
    check-cast p1, [Z

    check-cast p1, [Z

    check-cast p2, [Z

    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([Z[Z)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_8d

    .line 461
    :cond_82
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    :goto_8d
    return-void
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/lang3/builder/CompareToBuilder;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 320
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p2

    const/4 v0, 0x1

    .line 321
    invoke-static {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    const/4 v0, 0x0

    .line 322
    :goto_9
    array-length v1, p2

    if-ge v0, v1, :cond_55

    iget v1, p3, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_55

    .line 323
    aget-object v1, p2, v0

    .line 324
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p5, v2}, Lorg/apache/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_52

    if-nez p4, :cond_34

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v2

    if-nez v2, :cond_52

    :cond_34
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_52

    .line 329
    :try_start_3e
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v2, v1}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    :try_end_49
    .catch Ljava/lang/IllegalAccessException; {:try_start_3e .. :try_end_49} :catch_4a

    goto :goto_52

    .line 333
    :catch_4a
    new-instance p0, Ljava/lang/InternalError;

    const-string p1, "Unexpected IllegalAccessException"

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_52
    :goto_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_55
    return-void
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 142
    invoke-static {p0, p1, v1, v0, v2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 207
    invoke-static {p2}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;Z)I
    .registers 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 174
    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static varargs reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    if-ne p0, p1, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    if-eqz p0, :cond_41

    if-eqz p1, :cond_41

    .line 288
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 289
    invoke-virtual {v6, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 292
    new-instance v7, Lorg/apache/commons/lang3/builder/CompareToBuilder;

    invoke-direct {v7}, Lorg/apache/commons/lang3/builder/CompareToBuilder;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, v7

    move v4, p2

    move-object v5, p4

    .line 293
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V

    .line 294
    :goto_20
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_36

    if-eq v6, p3, :cond_36

    .line 295
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, v7

    move v4, p2

    move-object v5, p4

    .line 296
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V

    goto :goto_20

    .line 298
    :cond_36
    invoke-virtual {v7}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->toComparison()I

    move-result v0

    return v0

    .line 290
    :cond_3b
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_41
    const/4 v0, 0x0

    .line 286
    throw v0
.end method

.method public static varargs reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 240
    invoke-static {p0, p1, v0, v1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public append(BB)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4

    .line 539
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ge p1, p2, :cond_9

    const/4 p1, -0x1

    goto :goto_e

    :cond_9
    if-le p1, p2, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    .line 542
    :goto_e
    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0
.end method

.method public append(CC)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4

    .line 523
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ge p1, p2, :cond_9

    const/4 p1, -0x1

    goto :goto_e

    :cond_9
    if-le p1, p2, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    .line 526
    :goto_e
    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0
.end method

.method public append(DD)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 6

    .line 560
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    .line 563
    :cond_5
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0
.end method

.method public append(FF)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4

    .line 581
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    .line 584
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0
.end method

.method public append(II)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4

    .line 491
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ge p1, p2, :cond_9

    const/4 p1, -0x1

    goto :goto_e

    :cond_9
    if-le p1, p2, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    .line 494
    :goto_e
    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0
.end method

.method public append(JJ)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 6

    .line 475
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    cmp-long p1, p1, p3

    if-gez p1, :cond_b

    const/4 p1, -0x1

    goto :goto_10

    :cond_b
    if-lez p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    .line 478
    :goto_10
    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4

    const/4 v0, 0x0

    .line 377
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "*>;)",
            "Lorg/apache/commons/lang3/builder/CompareToBuilder;"
        }
    .end annotation

    .line 406
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    if-nez p1, :cond_e

    const/4 p1, -0x1

    .line 413
    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    if-nez p2, :cond_14

    const/4 p1, 0x1

    .line 417
    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    .line 420
    :cond_14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 422
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->appendArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_33

    :cond_22
    if-nez p3, :cond_2d

    .line 427
    check-cast p1, Ljava/lang/Comparable;

    .line 428
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_33

    .line 432
    :cond_2d
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    :goto_33
    return-object p0
.end method

.method public append(SS)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4

    .line 507
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ge p1, p2, :cond_9

    const/4 p1, -0x1

    goto :goto_e

    :cond_9
    if-le p1, p2, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    .line 510
    :goto_e
    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0
.end method

.method public append(ZZ)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4

    .line 597
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    if-nez p1, :cond_e

    const/4 p1, -0x1

    .line 604
    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_11

    :cond_e
    const/4 p1, 0x1

    .line 606
    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    :goto_11
    return-object p0
.end method

.method public append([B[B)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 7

    .line 860
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 867
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 871
    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    .line 874
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 875
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_21
    const/4 v0, 0x0

    .line 878
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 879
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(BB)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([C[C)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 7

    .line 820
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 827
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 831
    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    .line 834
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 835
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_21
    const/4 v0, 0x0

    .line 838
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 839
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(CC)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([D[D)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 8

    .line 900
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 907
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 911
    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    .line 914
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 915
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_21
    const/4 v0, 0x0

    .line 918
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 919
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(DD)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([F[F)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 7

    .line 940
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 947
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 951
    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    .line 954
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 955
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_21
    const/4 v0, 0x0

    .line 958
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 959
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(FF)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([I[I)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 7

    .line 740
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 747
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 751
    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    .line 754
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 755
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_21
    const/4 v0, 0x0

    .line 758
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 759
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(II)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([J[J)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 8

    .line 700
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 707
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 711
    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    .line 714
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 715
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_21
    const/4 v0, 0x0

    .line 718
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 719
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(JJ)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4

    const/4 v0, 0x0

    .line 633
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "*>;)",
            "Lorg/apache/commons/lang3/builder/CompareToBuilder;"
        }
    .end annotation

    .line 660
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 667
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 671
    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    .line 674
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 675
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_21
    const/4 v0, 0x0

    .line 678
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 679
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2, p3}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([S[S)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 7

    .line 780
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 787
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 791
    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    .line 794
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 795
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_21
    const/4 v0, 0x0

    .line 798
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 799
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(SS)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([Z[Z)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 7

    .line 980
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 987
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 991
    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    .line 994
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 995
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_21
    const/4 v0, 0x0

    .line 998
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 999
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(ZZ)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public appendSuper(I)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 3

    .line 349
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    .line 352
    :cond_5
    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0
.end method

.method public build()Ljava/lang/Integer;
    .registers 2

    .line 1030
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->toComparison()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 95
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->build()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public toComparison()I
    .registers 2

    .line 1015
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return v0
.end method
