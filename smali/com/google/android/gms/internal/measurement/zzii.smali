.class final Lcom/google/android/gms/internal/measurement/zzii;
.super Lcom/google/android/gms/internal/measurement/zzie;
.source "com.google.android.gms:play-services-measurement-base@@22.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzkc;
.implements Lcom/google/android/gms/internal/measurement/zzlo;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzie<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzkc<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzlo;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final zza:[Z


# instance fields
.field private zzb:[Z

.field private zzc:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    new-array v1, v0, [Z

    .line 46
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzii;->zza:[Z

    .line 47
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzii;

    invoke-direct {v2, v1, v0, v0}, Lcom/google/android/gms/internal/measurement/zzii;-><init>([ZIZ)V

    return-void
.end method

.method constructor <init>()V
    .registers 4

    .line 48
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzii;->zza:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzii;-><init>([ZIZ)V

    return-void
.end method

.method private constructor <init>([ZIZ)V
    .registers 4

    .line 50
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zzie;-><init>(Z)V

    .line 51
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzb:[Z

    .line 52
    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzc:I

    return-void
.end method

.method private static zzc(I)I
    .registers 2

    mul-int/lit8 p0, p0, 0x3

    .line 1
    div-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x1

    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private final zzd(I)Ljava/lang/String;
    .registers 5

    .line 45
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzc:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", Size:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final zze(I)V
    .registers 3

    if-ltz p1, :cond_7

    .line 78
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzc:I

    if-ge p1, v0, :cond_7

    return-void

    .line 79
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzii;->zzd(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final synthetic add(ILjava/lang/Object;)V
    .registers 7

    .line 54
    check-cast p2, Ljava/lang/Boolean;

    .line 55
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzie;->zza()V

    if-ltz p1, :cond_45

    .line 57
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzc:I

    if-gt p1, v0, :cond_45

    .line 59
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzb:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_1b

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    .line 60
    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_34

    .line 61
    :cond_1b
    array-length v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzii;->zzc(I)I

    move-result v0

    .line 62
    new-array v0, v0, [Z

    .line 63
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzb:[Z

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzb:[Z

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzc:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzb:[Z

    .line 66
    :goto_34
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzb:[Z

    aput-boolean p2, v0, p1

    .line 67
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzc:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzc:I

    .line 68
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzii;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzii;->modCount:I

    return-void

    .line 58
    :cond_45
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzii;->zzd(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final synthetic add(Ljava/lang/Object;)Z
    .registers 2

    .line 88
    check-cast p1, Ljava/lang/Boolean;

    .line 89
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzii;->zza(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzie;->zza()V

    .line 93
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzii;

    if-nez v0, :cond_f

    .line 95
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzie;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 96
    :cond_f
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzii;

    .line 97
    iget v0, p1, Lcom/google/android/gms/internal/measurement/zzii;->zzc:I

    const/4 v1, 0x0

    if-nez v0, :cond_17

    return v1

    .line 99
    :cond_17
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzc:I

    const v3, 0x7fffffff

    sub-int/2addr v3, v2

    if-lt v3, v0, :cond_3f

    add-int/2addr v2, v0

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzb:[Z

    array-length v3, v0

    if-le v2, v3, :cond_2b

    .line 104
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzb:[Z

    .line 105
    :cond_2b
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzii;->zzb:[Z

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzb:[Z

    iget v4, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzc:I

    iget p1, p1, Lcom/google/android/gms/internal/measurement/zzii;->zzc:I

    invoke-static {v0, v1, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzc:I

    .line 107
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzii;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzii;->modCount:I

    return v0

    .line 101
    :cond_3f
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3

    .line 109
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzii;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 112
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzii;

    if-nez v1, :cond_d

    .line 113
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzie;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 114
    :cond_d
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzii;

    .line 115
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzc:I

    iget v2, p1, Lcom/google/android/gms/internal/measurement/zzii;->zzc:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_17

    return v3

    .line 117
    :cond_17
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzii;->zzb:[Z

    move v1, v3

    .line 118
    :goto_1a
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzc:I

    if-ge v1, v2, :cond_2a

    .line 119
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzb:[Z

    aget-boolean v2, v2, v1

    aget-boolean v4, p1, v1

    if-eq v2, v4, :cond_27

    return v3

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2a
    return v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 24
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzii;->zzb(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    :goto_2
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzc:I

    if-ge v1, v2, :cond_14

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzb:[Z

    aget-boolean v2, v2, v1

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(Z)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .registers 6

    .line 7
    instance-of v0, p1, Ljava/lang/Boolean;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 9
    :cond_6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzii;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_1d

    .line 12
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzb:[Z

    aget-boolean v3, v3, v2

    if-ne v3, p1, :cond_1a

    return v2

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1d
    return v1
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .registers 6

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzie;->zza()V

    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzii;->zze(I)V

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzb:[Z

    aget-boolean v1, v0, p1

    .line 30
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzc:I

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_18

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    .line 31
    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    :cond_18
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzc:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzc:I

    .line 33
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzii;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzii;->modCount:I

    .line 34
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected final removeRange(II)V
    .registers 5

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzie;->zza()V

    if-lt p2, p1, :cond_1a

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzb:[Z

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzc:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzc:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzc:I

    .line 86
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzii;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzii;->modCount:I

    return-void

    .line 83
    :cond_1a
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 36
    check-cast p2, Ljava/lang/Boolean;

    .line 37
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzie;->zza()V

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzii;->zze(I)V

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzb:[Z

    aget-boolean v1, v0, p1

    .line 41
    aput-boolean p2, v0, p1

    .line 43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzc:I

    return v0
.end method

.method public final synthetic zza(I)Lcom/google/android/gms/internal/measurement/zzkc;
    .registers 5

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzc:I

    if-lt p1, v0, :cond_18

    if-nez p1, :cond_9

    .line 20
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzii;->zza:[Z

    goto :goto_f

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzb:[Z

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    .line 21
    :goto_f
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzii;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzc:I

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzii;-><init>([ZIZ)V

    return-object v0

    .line 19
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final zza(Z)V
    .registers 6

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzie;->zza()V

    .line 71
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzb:[Z

    array-length v2, v1

    if-ne v0, v2, :cond_1b

    .line 72
    array-length v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzii;->zzc(I)I

    move-result v0

    .line 73
    new-array v0, v0, [Z

    .line 74
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzb:[Z

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzc:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzb:[Z

    .line 76
    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzb:[Z

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzc:I

    aput-boolean p1, v0, v1

    return-void
.end method

.method public final zzb(I)Z
    .registers 3

    .line 123
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzii;->zze(I)V

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzb:[Z

    aget-boolean p1, v0, p1

    return p1
.end method
