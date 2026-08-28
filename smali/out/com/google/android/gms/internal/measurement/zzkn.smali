.class final Lcom/google/android/gms/internal/measurement/zzkn;
.super Lcom/google/android/gms/internal/measurement/zzie;
.source "com.google.android.gms:play-services-measurement-base@@22.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjz;
.implements Lcom/google/android/gms/internal/measurement/zzlo;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzie<",
        "Ljava/lang/Long;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjz;",
        "Lcom/google/android/gms/internal/measurement/zzlo;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final zza:[J

.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzkn;


# instance fields
.field private zzc:[J

.field private zzd:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    new-array v1, v0, [J

    .line 48
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzkn;->zza:[J

    .line 49
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzkn;

    invoke-direct {v2, v1, v0, v0}, Lcom/google/android/gms/internal/measurement/zzkn;-><init>([JIZ)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzkn;->zzb:Lcom/google/android/gms/internal/measurement/zzkn;

    return-void
.end method

.method constructor <init>()V
    .registers 4

    .line 50
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkn;->zza:[J

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkn;-><init>([JIZ)V

    return-void
.end method

.method private constructor <init>([JIZ)V
    .registers 4

    .line 52
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zzie;-><init>(Z)V

    .line 53
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzc:[J

    .line 54
    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzd:I

    return-void
.end method

.method public static zzd()Lcom/google/android/gms/internal/measurement/zzkn;
    .registers 1

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkn;->zzb:Lcom/google/android/gms/internal/measurement/zzkn;

    return-object v0
.end method

.method private static zze(I)I
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

.method private final zzf(I)Ljava/lang/String;
    .registers 5

    .line 47
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzd:I

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

.method private final zzg(I)V
    .registers 3

    if-ltz p1, :cond_7

    .line 90
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzd:I

    if-ge p1, v0, :cond_7

    return-void

    .line 91
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkn;->zzf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final synthetic add(ILjava/lang/Object;)V
    .registers 8

    .line 56
    check-cast p2, Ljava/lang/Long;

    .line 57
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzie;->zza()V

    if-ltz p1, :cond_45

    .line 59
    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzd:I

    if-gt p1, p2, :cond_45

    .line 61
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzc:[J

    array-length v3, v2

    if-ge p2, v3, :cond_1b

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr p2, p1

    .line 62
    invoke-static {v2, p1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_34

    .line 63
    :cond_1b
    array-length p2, v2

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzkn;->zze(I)I

    move-result p2

    .line 64
    new-array p2, p2, [J

    .line 65
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzc:[J

    const/4 v3, 0x0

    invoke-static {v2, v3, p2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzc:[J

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzd:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzc:[J

    .line 68
    :goto_34
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzc:[J

    aput-wide v0, p2, p1

    .line 69
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzd:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzd:I

    .line 70
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->modCount:I

    return-void

    .line 60
    :cond_45
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkn;->zzf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final synthetic add(Ljava/lang/Object;)Z
    .registers 4

    .line 100
    check-cast p1, Ljava/lang/Long;

    .line 101
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkn;->zza(J)V

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
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzie;->zza()V

    .line 105
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzkn;

    if-nez v0, :cond_f

    .line 107
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzie;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 108
    :cond_f
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkn;

    .line 109
    iget v0, p1, Lcom/google/android/gms/internal/measurement/zzkn;->zzd:I

    const/4 v1, 0x0

    if-nez v0, :cond_17

    return v1

    .line 111
    :cond_17
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzd:I

    const v3, 0x7fffffff

    sub-int/2addr v3, v2

    if-lt v3, v0, :cond_3f

    add-int/2addr v2, v0

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzc:[J

    array-length v3, v0

    if-le v2, v3, :cond_2b

    .line 116
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzc:[J

    .line 117
    :cond_2b
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzkn;->zzc:[J

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzc:[J

    iget v4, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzd:I

    iget p1, p1, Lcom/google/android/gms/internal/measurement/zzkn;->zzd:I

    invoke-static {v0, v1, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzd:I

    .line 119
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->modCount:I

    return v0

    .line 113
    :cond_3f
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3

    .line 121
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkn;->indexOf(Ljava/lang/Object;)I

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
    .registers 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 124
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzkn;

    if-nez v1, :cond_d

    .line 125
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzie;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 126
    :cond_d
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkn;

    .line 127
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzd:I

    iget v2, p1, Lcom/google/android/gms/internal/measurement/zzkn;->zzd:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_17

    return v3

    .line 129
    :cond_17
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzkn;->zzc:[J

    move v1, v3

    .line 130
    :goto_1a
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzd:I

    if-ge v1, v2, :cond_2c

    .line 131
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzc:[J

    aget-wide v4, v2, v1

    aget-wide v6, p1, v1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_29

    return v3

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2c
    return v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .registers 4

    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    :goto_2
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzd:I

    if-ge v1, v2, :cond_14

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzc:[J

    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .registers 8

    .line 7
    instance-of v0, p1, Ljava/lang/Long;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 9
    :cond_6
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkn;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_11
    if-ge v0, p1, :cond_1f

    .line 12
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzc:[J

    aget-wide v4, v4, v0

    cmp-long v4, v4, v2

    if-nez v4, :cond_1c

    return v0

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1f
    return v1
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .registers 7

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzie;->zza()V

    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkn;->zzg(I)V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzc:[J

    aget-wide v1, v0, p1

    .line 32
    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzd:I

    add-int/lit8 v4, v3, -0x1

    if-ge p1, v4, :cond_18

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    .line 33
    invoke-static {v0, v4, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    :cond_18
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzd:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzd:I

    .line 35
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->modCount:I

    .line 36
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final removeRange(II)V
    .registers 5

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzie;->zza()V

    if-lt p2, p1, :cond_1a

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzc:[J

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzd:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzd:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzd:I

    .line 98
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->modCount:I

    return-void

    .line 95
    :cond_1a
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 38
    check-cast p2, Ljava/lang/Long;

    .line 39
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzie;->zza()V

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkn;->zzg(I)V

    .line 42
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzc:[J

    aget-wide v2, p2, p1

    .line 43
    aput-wide v0, p2, p1

    .line 45
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzd:I

    return v0
.end method

.method public final synthetic zza(I)Lcom/google/android/gms/internal/measurement/zzkc;
    .registers 2

    .line 23
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkn;->zzc(I)Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object p1

    return-object p1
.end method

.method public final zza(J)V
    .registers 7

    .line 72
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzie;->zza()V

    .line 73
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzd:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzc:[J

    array-length v2, v1

    if-ne v0, v2, :cond_1b

    .line 74
    array-length v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzkn;->zze(I)I

    move-result v0

    .line 75
    new-array v0, v0, [J

    .line 76
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzc:[J

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzd:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzc:[J

    .line 78
    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzc:[J

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzd:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzd:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public final zzb(I)J
    .registers 4

    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkn;->zzg(I)V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzc:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/measurement/zzjz;
    .registers 5

    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzd:I

    if-lt p1, v0, :cond_18

    if-nez p1, :cond_9

    .line 21
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzkn;->zza:[J

    goto :goto_f

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzc:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    .line 22
    :goto_f
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkn;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzd:I

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkn;-><init>([JIZ)V

    return-object v0

    .line 20
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method final zzd(I)V
    .registers 4

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzc:[J

    array-length v1, v0

    if-gt p1, v1, :cond_6

    return-void

    .line 82
    :cond_6
    array-length v1, v0

    if-nez v1, :cond_14

    const/16 v0, 0xa

    .line 83
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzc:[J

    return-void

    .line 85
    :cond_14
    array-length v0, v0

    :goto_15
    if-ge v0, p1, :cond_1c

    .line 87
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzkn;->zze(I)I

    move-result v0

    goto :goto_15

    .line 88
    :cond_1c
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzc:[J

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkn;->zzc:[J

    return-void
.end method
