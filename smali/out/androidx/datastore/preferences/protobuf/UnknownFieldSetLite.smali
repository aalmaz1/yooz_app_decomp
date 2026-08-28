.class public final Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;
.super Ljava/lang/Object;
.source "UnknownFieldSetLite.java"


# static fields
.field private static final DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

.field private static final MIN_CAPACITY:I = 0x8


# instance fields
.field private count:I

.field private isMutable:Z

.field private memoizedSerializedSize:I

.field private objects:[Ljava/lang/Object;

.field private tags:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 52
    new-instance v0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 99
    invoke-direct {p0, v3, v1, v0, v2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .registers 6

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 92
    iput v0, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    .line 104
    iput p1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    .line 105
    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    .line 106
    iput-object p3, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    .line 107
    iput-boolean p4, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->isMutable:Z

    return-void
.end method

.method private ensureCapacity()V
    .registers 4

    .line 400
    iget v0, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    array-length v2, v1

    if-ne v0, v2, :cond_1e

    const/4 v2, 0x4

    if-ge v0, v2, :cond_d

    const/16 v2, 0x8

    goto :goto_f

    :cond_d
    shr-int/lit8 v2, v0, 0x1

    :goto_f
    add-int/2addr v0, v2

    .line 404
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    .line 405
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    :cond_1e
    return-void
.end method

.method private static equals([I[II)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_e

    .line 306
    aget v2, p0, v1

    aget v3, p1, v1

    if-eq v2, v3, :cond_b

    return v0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method private static equals([Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_12

    .line 315
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v0

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    const/4 p0, 0x1

    return p0
.end method

.method public static getDefaultInstance()Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;
    .registers 1

    .line 61
    sget-object v0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    return-object v0
.end method

.method private static hashCode([II)I
    .registers 5

    const/16 v0, 0x11

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_d

    mul-int/lit8 v0, v0, 0x1f

    .line 349
    aget v2, p0, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_d
    return v0
.end method

.method private static hashCode([Ljava/lang/Object;I)I
    .registers 5

    const/16 v0, 0x11

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_11

    mul-int/lit8 v0, v0, 0x1f

    .line 357
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_11
    return v0
.end method

.method private mergeFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 483
    :cond_0
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readTag()I

    move-result v0

    if-eqz v0, :cond_c

    .line 484
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->mergeFieldFrom(ILandroidx/datastore/preferences/protobuf/CodedInputStream;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    return-object p0
.end method

.method static mutableCopyOf(Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;
    .registers 8

    .line 74
    iget v0, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    iget v1, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    add-int/2addr v0, v1

    .line 75
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 76
    iget-object v2, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    iget v3, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    iget v4, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 78
    iget-object v3, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget p0, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    iget p1, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    new-instance p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method static newInstance()Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;
    .registers 1

    .line 66
    new-instance v0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;-><init>()V

    return-object v0
.end method

.method private static writeField(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 208
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagWireType(I)I

    move-result p0

    if-eqz p0, :cond_5a

    const/4 v1, 0x1

    if-eq p0, v1, :cond_50

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4a

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2a

    const/4 v1, 0x5

    if-ne p0, v1, :cond_20

    .line 213
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, v0, p0}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed32(II)V

    goto :goto_63

    .line 234
    :cond_20
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 222
    :cond_2a
    invoke-interface {p2}, Landroidx/datastore/preferences/protobuf/Writer;->fieldOrder()Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;

    move-result-object p0

    sget-object v1, Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;->ASCENDING:Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;

    if-ne p0, v1, :cond_3e

    .line 223
    invoke-interface {p2, v0}, Landroidx/datastore/preferences/protobuf/Writer;->writeStartGroup(I)V

    .line 224
    check-cast p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->writeTo(Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 225
    invoke-interface {p2, v0}, Landroidx/datastore/preferences/protobuf/Writer;->writeEndGroup(I)V

    goto :goto_63

    .line 227
    :cond_3e
    invoke-interface {p2, v0}, Landroidx/datastore/preferences/protobuf/Writer;->writeEndGroup(I)V

    .line 228
    check-cast p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->writeTo(Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 229
    invoke-interface {p2, v0}, Landroidx/datastore/preferences/protobuf/Writer;->writeStartGroup(I)V

    goto :goto_63

    .line 219
    :cond_4a
    check-cast p1, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-interface {p2, v0, p1}, Landroidx/datastore/preferences/protobuf/Writer;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    goto :goto_63

    .line 216
    :cond_50
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_63

    .line 210
    :cond_5a
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt64(IJ)V

    :goto_63
    return-void
.end method


# virtual methods
.method checkMutable()V
    .registers 2

    .line 121
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->isMutable:Z

    if-eqz v0, :cond_5

    return-void

    .line 122
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 332
    :cond_8
    instance-of v2, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    if-nez v2, :cond_d

    return v1

    .line 336
    :cond_d
    check-cast p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 337
    iget v2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    iget v3, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    if-ne v2, v3, :cond_2d

    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    iget-object v4, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    .line 338
    invoke-static {v3, v4, v2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->equals([I[II)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget v3, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    .line 339
    invoke-static {v2, p1, v3}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->equals([Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_2d

    :cond_2c
    return v0

    :cond_2d
    :goto_2d
    return v1
.end method

.method public getSerializedSize()I
    .registers 7

    .line 267
    iget v0, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    .line 273
    :goto_8
    iget v2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v2, :cond_7c

    .line 274
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    aget v2, v2, v0

    .line 275
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v3

    .line 276
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagWireType(I)I

    move-result v2

    if-eqz v2, :cond_6a

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5b

    const/4 v4, 0x2

    if-eq v2, v4, :cond_50

    const/4 v5, 0x3

    if-eq v2, v5, :cond_3f

    const/4 v4, 0x5

    if-ne v2, v4, :cond_35

    .line 281
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v2

    goto :goto_78

    .line 295
    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 291
    :cond_3f
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    mul-int/2addr v2, v4

    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 292
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_78

    .line 287
    :cond_50
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-static {v3, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    move-result v2

    goto :goto_78

    .line 284
    :cond_5b
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v2

    goto :goto_78

    .line 278
    :cond_6a
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    :goto_78
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 299
    :cond_7c
    iput v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    return v1
.end method

.method public getSerializedSizeAsMessageSet()I
    .registers 5

    .line 243
    iget v0, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    .line 249
    :goto_8
    iget v2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v2, :cond_22

    .line 250
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    aget v2, v2, v0

    .line 251
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v2

    .line 252
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 253
    invoke-static {v2, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeRawMessageSetExtensionSize(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 256
    :cond_22
    iput v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 366
    iget v0, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 367
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    invoke-static {v2, v0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->hashCode([II)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 368
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget v2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    invoke-static {v0, v2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->hashCode([Ljava/lang/Object;I)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public makeImmutable()V
    .registers 2

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->isMutable:Z

    return-void
.end method

.method mergeFieldFrom(ILandroidx/datastore/preferences/protobuf/CodedInputStream;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->checkMutable()V

    .line 419
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 420
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_56

    if-eq v1, v2, :cond_4a

    const/4 v3, 0x2

    if-eq v1, v3, :cond_42

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eq v1, v3, :cond_2f

    if-eq v1, v4, :cond_2d

    const/4 v0, 0x5

    if-ne v1, v0, :cond_28

    .line 425
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readFixed32()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return v2

    .line 442
    :cond_28
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2d
    const/4 p1, 0x0

    return p1

    .line 434
    :cond_2f
    new-instance v1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    invoke-direct {v1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;-><init>()V

    .line 435
    invoke-direct {v1, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->mergeFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 436
    invoke-static {v0, v4}, Landroidx/datastore/preferences/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 437
    invoke-virtual {p0, p1, v1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return v2

    .line 431
    :cond_42
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return v2

    .line 428
    :cond_4a
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return v2

    .line 422
    :cond_56
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return v2
.end method

.method mergeLengthDelimitedField(ILandroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;
    .registers 4

    .line 469
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->checkMutable()V

    if-eqz p1, :cond_e

    const/4 v0, 0x2

    .line 474
    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return-object p0

    .line 471
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero is not a valid field number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method mergeVarintField(II)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;
    .registers 5

    .line 453
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->checkMutable()V

    if-eqz p1, :cond_13

    const/4 v0, 0x0

    .line 458
    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return-object p0

    .line 455
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero is not a valid field number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final printWithIndent(Ljava/lang/StringBuilder;I)V
    .registers 6

    const/4 v0, 0x0

    .line 382
    :goto_1
    iget v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_1b

    .line 383
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    .line 384
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, p2, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    return-void
.end method

.method storeField(ILjava/lang/Object;)V
    .registers 5

    .line 390
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->checkMutable()V

    .line 391
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->ensureCapacity()V

    .line 393
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    aput p1, v0, v1

    .line 394
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 395
    iput v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    return-void
.end method

.method public writeAsMessageSetTo(Landroidx/datastore/preferences/protobuf/CodedOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 165
    :goto_1
    iget v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_19

    .line 166
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    .line 167
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-virtual {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeRawMessageSetExtension(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method writeAsMessageSetTo(Landroidx/datastore/preferences/protobuf/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/Writer;->fieldOrder()Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;->DESCENDING:Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_20

    .line 175
    iget v0, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_37

    .line 176
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    .line 177
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_20
    const/4 v0, 0x0

    .line 181
    :goto_21
    iget v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_37

    .line 182
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    .line 183
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_37
    return-void
.end method

.method public writeTo(Landroidx/datastore/preferences/protobuf/CodedOutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 132
    :goto_1
    iget v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_6b

    .line 133
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    .line 134
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v2

    .line 135
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    if-eqz v1, :cond_5b

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4d

    const/4 v3, 0x2

    if-eq v1, v3, :cond_43

    const/4 v3, 0x3

    if-eq v1, v3, :cond_32

    const/4 v3, 0x5

    if-ne v1, v3, :cond_2d

    .line 140
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeFixed32(II)V

    goto :goto_68

    .line 154
    :cond_2d
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 149
    :cond_32
    invoke-virtual {p1, v2, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeTag(II)V

    .line 150
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->writeTo(Landroidx/datastore/preferences/protobuf/CodedOutputStream;)V

    const/4 v1, 0x4

    .line 151
    invoke-virtual {p1, v2, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeTag(II)V

    goto :goto_68

    .line 146
    :cond_43
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-virtual {p1, v2, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    goto :goto_68

    .line 143
    :cond_4d
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    goto :goto_68

    .line 137
    :cond_5b
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :goto_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6b
    return-void
.end method

.method public writeTo(Landroidx/datastore/preferences/protobuf/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    iget v0, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    if-nez v0, :cond_5

    return-void

    .line 195
    :cond_5
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/Writer;->fieldOrder()Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;->ASCENDING:Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_20

    const/4 v0, 0x0

    .line 196
    :goto_e
    iget v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_34

    .line 197
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->writeField(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 200
    :cond_20
    iget v0, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->count:I

    add-int/lit8 v0, v0, -0x1

    :goto_24
    if-ltz v0, :cond_34

    .line 201
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->writeField(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    :cond_34
    return-void
.end method
