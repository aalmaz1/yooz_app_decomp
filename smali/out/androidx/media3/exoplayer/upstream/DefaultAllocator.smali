.class public final Landroidx/media3/exoplayer/upstream/DefaultAllocator;
.super Ljava/lang/Object;
.source "DefaultAllocator.java"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Allocator;


# static fields
.field private static final AVAILABLE_EXTRA_CAPACITY:I = 0x64


# instance fields
.field private allocatedCount:I

.field private availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

.field private availableCount:I

.field private final individualAllocationSize:I

.field private final initialAllocationBlock:[B

.field private targetBufferSize:I

.field private final trimOnReset:Z


# direct methods
.method public constructor <init>(ZI)V
    .registers 4

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(ZII)V
    .registers 8

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    .line 67
    :goto_a
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    if-ltz p3, :cond_10

    goto :goto_11

    :cond_10
    move v0, v1

    .line 68
    :goto_11
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 69
    iput-boolean p1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->trimOnReset:Z

    .line 70
    iput p2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    .line 71
    iput p3, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 p1, p3, 0x64

    .line 72
    new-array p1, p1, [Landroidx/media3/exoplayer/upstream/Allocation;

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    if-lez p3, :cond_3a

    mul-int p1, p3, p2

    .line 74
    new-array p1, p1, [B

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    :goto_28
    if-ge v1, p3, :cond_3d

    mul-int p1, v1, p2

    .line 77
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    new-instance v2, Landroidx/media3/exoplayer/upstream/Allocation;

    iget-object v3, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    invoke-direct {v2, v3, p1}, Landroidx/media3/exoplayer/upstream/Allocation;-><init>([BI)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_3a
    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    :cond_3d
    return-void
.end method


# virtual methods
.method public declared-synchronized allocate()Landroidx/media3/exoplayer/upstream/Allocation;
    .registers 5

    monitor-enter p0

    .line 100
    :try_start_1
    iget v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    .line 102
    iget v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    if-lez v0, :cond_21

    .line 103
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    aget-object v0, v1, v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/upstream/Allocation;

    .line 104
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    iget v2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    goto :goto_3d

    .line 106
    :cond_21
    new-instance v0, Landroidx/media3/exoplayer/upstream/Allocation;

    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/upstream/Allocation;-><init>([BI)V

    .line 107
    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    array-length v3, v2

    if-le v1, v3, :cond_3d

    .line 111
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/exoplayer/upstream/Allocation;

    iput-object v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    .line 114
    :cond_3d
    :goto_3d
    monitor-exit p0

    return-object v0

    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIndividualAllocationLength()I
    .registers 2

    .line 185
    iget v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    return v0
.end method

.method public declared-synchronized getTotalBytesAllocated()I
    .registers 3

    monitor-enter p0

    .line 180
    :try_start_1
    iget v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    mul-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release(Landroidx/media3/exoplayer/upstream/Allocation;)V
    .registers 5

    monitor-enter p0

    .line 119
    :try_start_1
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    aput-object p1, v0, v1

    .line 120
    iget p1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 123
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release(Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;)V
    .registers 5

    monitor-enter p0

    :goto_1
    if-eqz p1, :cond_1c

    .line 128
    :try_start_3
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    invoke-interface {p1}, Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;->getAllocation()Landroidx/media3/exoplayer/upstream/Allocation;

    move-result-object v2

    aput-object v2, v0, v1

    .line 129
    iget v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    .line 130
    invoke-interface {p1}, Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;->next()Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;

    move-result-object p1

    goto :goto_1

    .line 133
    :cond_1c
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    .line 134
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    .line 85
    :try_start_1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->trimOnReset:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->setTargetBufferSize(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 88
    :cond_9
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTargetBufferSize(I)V
    .registers 3

    monitor-enter p0

    .line 91
    :try_start_1
    iget v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->targetBufferSize:I

    if-ge p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 92
    :goto_8
    iput p1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->targetBufferSize:I

    if-eqz v0, :cond_f

    .line 94
    invoke-virtual {p0}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->trim()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 96
    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized trim()V
    .registers 8

    monitor-enter p0

    .line 138
    :try_start_1
    iget v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->targetBufferSize:I

    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->ceilDivide(II)I

    move-result v0

    .line 139
    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 140
    iget v2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_68

    if-lt v0, v2, :cond_17

    .line 142
    monitor-exit p0

    return-void

    .line 145
    :cond_17
    :try_start_17
    iget-object v3, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eqz v3, :cond_5c

    add-int/lit8 v2, v2, -0x1

    :goto_1d
    if-gt v1, v2, :cond_52

    .line 152
    iget-object v3, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    aget-object v3, v3, v1

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/upstream/Allocation;

    .line 153
    iget-object v4, v3, Landroidx/media3/exoplayer/upstream/Allocation;->data:[B

    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-ne v4, v5, :cond_32

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 156
    :cond_32
    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    aget-object v4, v4, v2

    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/upstream/Allocation;

    .line 157
    iget-object v5, v4, Landroidx/media3/exoplayer/upstream/Allocation;->data:[B

    iget-object v6, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eq v5, v6, :cond_45

    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    .line 160
    :cond_45
    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    add-int/lit8 v6, v1, 0x1

    aput-object v4, v5, v1

    add-int/lit8 v1, v2, -0x1

    .line 161
    aput-object v3, v5, v2

    move v2, v1

    move v1, v6

    goto :goto_1d

    .line 166
    :cond_52
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 167
    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I
    :try_end_58
    .catchall {:try_start_17 .. :try_end_58} :catchall_68

    if-lt v0, v1, :cond_5c

    .line 169
    monitor-exit p0

    return-void

    .line 174
    :cond_5c
    :try_start_5c
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    iget v2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 175
    iput v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I
    :try_end_66
    .catchall {:try_start_5c .. :try_end_66} :catchall_68

    .line 176
    monitor-exit p0

    return-void

    :catchall_68
    move-exception v0

    monitor-exit p0

    throw v0
.end method
