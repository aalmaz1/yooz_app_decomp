.class public Lorg/apache/commons/lang3/builder/EqualsBuilder;
.super Ljava/lang/Object;
.source "EqualsBuilder.java"

# interfaces
.implements Lorg/apache/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/builder/Builder<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final REGISTRY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Set<",
            "Lorg/apache/commons/lang3/tuple/Pair<",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private excludeFields:[Ljava/lang/String;

.field private isEquals:Z

.field private reflectUpToClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private testRecursive:Z

.field private testTransients:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 96
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    const/4 v0, 0x0

    .line 214
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->testTransients:Z

    .line 215
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->testRecursive:Z

    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectUpToClass:Ljava/lang/Class;

    .line 217
    iput-object v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->excludeFields:[Ljava/lang/String;

    return-void
.end method

.method private appendArray(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 633
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_10

    const/4 p1, 0x0

    .line 634
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto/16 :goto_9d

    .line 635
    :cond_10
    instance-of v0, p1, [J

    if-eqz v0, :cond_21

    .line 636
    check-cast p1, [J

    check-cast p1, [J

    check-cast p2, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([J[J)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto/16 :goto_9d

    .line 637
    :cond_21
    instance-of v0, p1, [I

    if-eqz v0, :cond_32

    .line 638
    check-cast p1, [I

    check-cast p1, [I

    check-cast p2, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([I[I)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto/16 :goto_9d

    .line 639
    :cond_32
    instance-of v0, p1, [S

    if-eqz v0, :cond_42

    .line 640
    check-cast p1, [S

    check-cast p1, [S

    check-cast p2, [S

    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([S[S)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_9d

    .line 641
    :cond_42
    instance-of v0, p1, [C

    if-eqz v0, :cond_52

    .line 642
    check-cast p1, [C

    check-cast p1, [C

    check-cast p2, [C

    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([C[C)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_9d

    .line 643
    :cond_52
    instance-of v0, p1, [B

    if-eqz v0, :cond_62

    .line 644
    check-cast p1, [B

    check-cast p1, [B

    check-cast p2, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([B[B)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_9d

    .line 645
    :cond_62
    instance-of v0, p1, [D

    if-eqz v0, :cond_72

    .line 646
    check-cast p1, [D

    check-cast p1, [D

    check-cast p2, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([D[D)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_9d

    .line 647
    :cond_72
    instance-of v0, p1, [F

    if-eqz v0, :cond_82

    .line 648
    check-cast p1, [F

    check-cast p1, [F

    check-cast p2, [F

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([F[F)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_9d

    .line 649
    :cond_82
    instance-of v0, p1, [Z

    if-eqz v0, :cond_92

    .line 650
    check-cast p1, [Z

    check-cast p1, [Z

    check-cast p2, [Z

    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([Z[Z)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_9d

    .line 653
    :cond_92
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    :goto_9d
    return-void
.end method

.method static getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/lang3/tuple/Pair<",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Lorg/apache/commons/lang3/builder/IDKey;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    .line 140
    new-instance p0, Lorg/apache/commons/lang3/builder/IDKey;

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    .line 141
    invoke-static {v0, p0}, Lorg/apache/commons/lang3/tuple/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;

    move-result-object p0

    return-object p0
.end method

.method static getRegistry()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/commons/lang3/tuple/Pair<",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            ">;>;"
        }
    .end annotation

    .line 125
    sget-object v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static isRegistered(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .line 158
    invoke-static {}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 159
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;

    move-result-object p0

    .line 160
    invoke-virtual {p0}, Lorg/apache/commons/lang3/tuple/Pair;->getRight()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/tuple/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/commons/lang3/tuple/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;

    move-result-object p1

    if-eqz v0, :cond_24

    .line 162
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    :cond_22
    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method private reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 537
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isRegistered(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 542
    :cond_7
    :try_start_7
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->register(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 543
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p3

    const/4 v0, 0x1

    .line 544
    invoke-static {p3, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    const/4 v0, 0x0

    .line 545
    :goto_13
    array-length v1, p3

    if-ge v0, v1, :cond_6b

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_6b

    .line 546
    aget-object v1, p3, v0

    .line 547
    iget-object v2, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->excludeFields:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_68

    iget-boolean v2, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->testTransients:Z

    if-nez v2, :cond_42

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v2

    if-nez v2, :cond_68

    :cond_42
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_68

    const-class v2, Lorg/apache/commons/lang3/builder/EqualsExclude;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2
    :try_end_52
    .catchall {:try_start_7 .. :try_end_52} :catchall_6f

    if-nez v2, :cond_68

    .line 553
    :try_start_54
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    :try_end_5f
    .catch Ljava/lang/IllegalAccessException; {:try_start_54 .. :try_end_5f} :catch_60
    .catchall {:try_start_54 .. :try_end_5f} :catchall_6f

    goto :goto_68

    .line 557
    :catch_60
    :try_start_60
    new-instance p3, Ljava/lang/InternalError;

    const-string v0, "Unexpected IllegalAccessException"

    invoke-direct {p3, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_6f

    :cond_68
    :goto_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 562
    :cond_6b
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->unregister(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_6f
    move-exception p3

    invoke-static {p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->unregister(Ljava/lang/Object;Ljava/lang/Object;)V

    throw p3
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 299
    invoke-static {p2}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .registers 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 352
    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;Z[Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class<",
            "*>;Z[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-eqz p0, :cond_27

    if-nez p1, :cond_9

    goto :goto_27

    .line 433
    :cond_9
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    invoke-virtual {v0, p5}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setExcludeFields([Ljava/lang/String;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object p5

    invoke-virtual {p5, p3}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setReflectUpToClass(Ljava/lang/Class;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setTestTransients(Z)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setTestRecursive(Z)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result p0

    return p0

    :cond_27
    :goto_27
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 386
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;Z[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 325
    invoke-static {p0, p1, v0, v1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static register(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 176
    invoke-static {}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_10

    .line 178
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 179
    sget-object v1, Lorg/apache/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 181
    :cond_10
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;

    move-result-object p0

    .line 182
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static unregister(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 198
    invoke-static {}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 200
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;

    move-result-object p0

    .line 201
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 202
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_18

    .line 203
    sget-object p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_18
    return-void
.end method


# virtual methods
.method public append(BB)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 4

    .line 729
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    .line 732
    :goto_a
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append(CC)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 4

    .line 714
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    .line 717
    :goto_a
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append(DD)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 6

    .line 750
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    .line 753
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(JJ)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(FF)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 4

    .line 770
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    .line 773
    :cond_5
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(II)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(II)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 4

    .line 684
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    .line 687
    :goto_a
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append(JJ)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 6

    .line 669
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    cmp-long p1, p1, p3

    if-nez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 672
    :goto_c
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 5

    .line 597
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    if-eqz p1, :cond_30

    if-nez p2, :cond_d

    goto :goto_30

    .line 607
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 608
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 610
    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->testRecursive:Z

    if-eqz v1, :cond_25

    invoke-static {v0}, Lorg/apache/commons/lang3/ClassUtils;->isPrimitiveOrWrapper(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 611
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_2f

    .line 613
    :cond_25
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto :goto_2f

    .line 618
    :cond_2c
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->appendArray(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2f
    return-object p0

    :cond_30
    :goto_30
    const/4 p1, 0x0

    .line 604
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append(SS)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 4

    .line 699
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    .line 702
    :goto_a
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append(ZZ)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 4

    .line 784
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    .line 787
    :goto_a
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append([B[B)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 6

    .line 960
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_28

    if-nez p2, :cond_e

    goto :goto_28

    .line 970
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 971
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 974
    :cond_16
    :goto_16
    array-length v1, p1

    if-ge v0, v1, :cond_27

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_27

    .line 975
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(BB)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_27
    return-object p0

    .line 967
    :cond_28
    :goto_28
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([C[C)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 6

    .line 929
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_28

    if-nez p2, :cond_e

    goto :goto_28

    .line 939
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 940
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 943
    :cond_16
    :goto_16
    array-length v1, p1

    if-ge v0, v1, :cond_27

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_27

    .line 944
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(CC)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_27
    return-object p0

    .line 936
    :cond_28
    :goto_28
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([D[D)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 8

    .line 991
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_28

    if-nez p2, :cond_e

    goto :goto_28

    .line 1001
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 1002
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 1005
    :cond_16
    :goto_16
    array-length v1, p1

    if-ge v0, v1, :cond_27

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_27

    .line 1006
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(DD)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_27
    return-object p0

    .line 998
    :cond_28
    :goto_28
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([F[F)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 6

    .line 1022
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_28

    if-nez p2, :cond_e

    goto :goto_28

    .line 1032
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 1033
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 1036
    :cond_16
    :goto_16
    array-length v1, p1

    if-ge v0, v1, :cond_27

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_27

    .line 1037
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(FF)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_27
    return-object p0

    .line 1029
    :cond_28
    :goto_28
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([I[I)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 6

    .line 867
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_28

    if-nez p2, :cond_e

    goto :goto_28

    .line 877
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 878
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 881
    :cond_16
    :goto_16
    array-length v1, p1

    if-ge v0, v1, :cond_27

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_27

    .line 882
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(II)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_27
    return-object p0

    .line 874
    :cond_28
    :goto_28
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([J[J)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 8

    .line 836
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_28

    if-nez p2, :cond_e

    goto :goto_28

    .line 846
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 847
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 850
    :cond_16
    :goto_16
    array-length v1, p1

    if-ge v0, v1, :cond_27

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_27

    .line 851
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(JJ)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_27
    return-object p0

    .line 843
    :cond_28
    :goto_28
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 6

    .line 805
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_28

    if-nez p2, :cond_e

    goto :goto_28

    .line 815
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 816
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 819
    :cond_16
    :goto_16
    array-length v1, p1

    if-ge v0, v1, :cond_27

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_27

    .line 820
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_27
    return-object p0

    .line 812
    :cond_28
    :goto_28
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([S[S)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 6

    .line 898
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_28

    if-nez p2, :cond_e

    goto :goto_28

    .line 908
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 909
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 912
    :cond_16
    :goto_16
    array-length v1, p1

    if-ge v0, v1, :cond_27

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_27

    .line 913
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(SS)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_27
    return-object p0

    .line 905
    :cond_28
    :goto_28
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([Z[Z)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 6

    .line 1053
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_28

    if-nez p2, :cond_e

    goto :goto_28

    .line 1063
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 1064
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 1067
    :cond_16
    :goto_16
    array-length v1, p1

    if-ge v0, v1, :cond_27

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_27

    .line 1068
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(ZZ)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_27
    return-object p0

    .line 1060
    :cond_28
    :goto_28
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public appendSuper(Z)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 3

    .line 576
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    .line 579
    :cond_5
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public build()Ljava/lang/Boolean;
    .registers 2

    .line 1094
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 87
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->build()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isEquals()Z
    .registers 2

    .line 1080
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return v0
.end method

.method public reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 7

    .line 466
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_57

    if-nez p2, :cond_e

    goto :goto_57

    .line 481
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 482
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 484
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 486
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    goto :goto_30

    .line 490
    :cond_23
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 492
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_31

    :cond_30
    :goto_30
    move-object v1, v2

    .line 503
    :cond_31
    :goto_31
    :try_start_31
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 504
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_50

    .line 506
    :cond_3b
    invoke-direct {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 507
    :goto_3e
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_50

    iget-object v2, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectUpToClass:Ljava/lang/Class;

    if-eq v1, v2, :cond_50

    .line 508
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 509
    invoke-direct {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_4f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31 .. :try_end_4f} :catch_51

    goto :goto_3e

    :cond_50
    :goto_50
    return-object p0

    .line 518
    :catch_51
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0

    .line 498
    :cond_54
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0

    .line 473
    :cond_57
    :goto_57
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x1

    .line 1112
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-void
.end method

.method protected setEquals(Z)V
    .registers 2

    .line 1104
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-void
.end method

.method public varargs setExcludeFields([Ljava/lang/String;)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 2

    .line 271
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->excludeFields:[Ljava/lang/String;

    return-object p0
.end method

.method public setReflectUpToClass(Ljava/lang/Class;)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/lang3/builder/EqualsBuilder;"
        }
    .end annotation

    .line 260
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectUpToClass:Ljava/lang/Class;

    return-object p0
.end method

.method public setTestRecursive(Z)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 2

    .line 249
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->testRecursive:Z

    return-object p0
.end method

.method public setTestTransients(Z)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 2

    .line 238
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->testTransients:Z

    return-object p0
.end method
