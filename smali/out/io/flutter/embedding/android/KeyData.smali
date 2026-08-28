.class public Lio/flutter/embedding/android/KeyData;
.super Ljava/lang/Object;
.source "KeyData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/android/KeyData$Type;,
        Lio/flutter/embedding/android/KeyData$DeviceType;
    }
.end annotation


# static fields
.field private static final BYTES_PER_FIELD:I = 0x8

.field public static final CHANNEL:Ljava/lang/String; = "flutter/keydata"

.field private static final FIELD_COUNT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "KeyData"


# instance fields
.field character:Ljava/lang/String;

.field deviceType:Lio/flutter/embedding/android/KeyData$DeviceType;

.field logicalKey:J

.field physicalKey:J

.field synthesized:Z

.field timestamp:J

.field type:Lio/flutter/embedding/android/KeyData$Type;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 11

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 116
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, Lio/flutter/embedding/android/KeyData;->timestamp:J

    .line 117
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Lio/flutter/embedding/android/KeyData$Type;->fromLong(J)Lio/flutter/embedding/android/KeyData$Type;

    move-result-object v2

    iput-object v2, p0, Lio/flutter/embedding/android/KeyData;->type:Lio/flutter/embedding/android/KeyData$Type;

    .line 118
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, Lio/flutter/embedding/android/KeyData;->physicalKey:J

    .line 119
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, Lio/flutter/embedding/android/KeyData;->logicalKey:J

    .line 120
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_31

    move v2, v3

    goto :goto_32

    :cond_31
    move v2, v6

    :goto_32
    iput-boolean v2, p0, Lio/flutter/embedding/android/KeyData;->synthesized:Z

    .line 121
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v7

    invoke-static {v7, v8}, Lio/flutter/embedding/android/KeyData$DeviceType;->fromLong(J)Lio/flutter/embedding/android/KeyData$DeviceType;

    move-result-object v2

    iput-object v2, p0, Lio/flutter/embedding/android/KeyData;->deviceType:Lio/flutter/embedding/android/KeyData$DeviceType;

    .line 123
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v7, v2

    cmp-long v2, v7, v0

    if-nez v2, :cond_67

    const/4 v2, 0x0

    .line 129
    iput-object v2, p0, Lio/flutter/embedding/android/KeyData;->character:Ljava/lang/String;

    cmp-long v2, v0, v4

    if-eqz v2, :cond_66

    long-to-int v0, v0

    .line 131
    new-array v1, v0, [B

    .line 132
    invoke-virtual {p1, v1, v6, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 134
    :try_start_54
    new-instance p1, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p1, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object p1, p0, Lio/flutter/embedding/android/KeyData;->character:Ljava/lang/String;
    :try_end_5d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_54 .. :try_end_5d} :catch_5e

    goto :goto_66

    .line 136
    :catch_5e
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "UTF-8 unsupported"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_66
    :goto_66
    return-void

    .line 124
    :cond_67
    new-instance v2, Ljava/lang/AssertionError;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 127
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v4, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x3

    aput-object p1, v4, v0

    const-string p1, "Unexpected char length: charSize is %d while buffer has position %d, capacity %d, limit %d"

    .line 125
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method


# virtual methods
.method toBytes()Ljava/nio/ByteBuffer;
    .registers 6

    .line 161
    :try_start_0
    iget-object v0, p0, Lio/flutter/embedding/android/KeyData;->character:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_c} :catch_53

    :goto_c
    if-nez v0, :cond_10

    const/4 v1, 0x0

    goto :goto_11

    .line 165
    :cond_10
    array-length v1, v0

    :goto_11
    add-int/lit8 v2, v1, 0x38

    .line 167
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 168
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    int-to-long v3, v1

    .line 170
    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 171
    iget-wide v3, p0, Lio/flutter/embedding/android/KeyData;->timestamp:J

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 172
    iget-object v1, p0, Lio/flutter/embedding/android/KeyData;->type:Lio/flutter/embedding/android/KeyData$Type;

    invoke-virtual {v1}, Lio/flutter/embedding/android/KeyData$Type;->getValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 173
    iget-wide v3, p0, Lio/flutter/embedding/android/KeyData;->physicalKey:J

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 174
    iget-wide v3, p0, Lio/flutter/embedding/android/KeyData;->logicalKey:J

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 175
    iget-boolean v1, p0, Lio/flutter/embedding/android/KeyData;->synthesized:Z

    if-eqz v1, :cond_3f

    const-wide/16 v3, 0x1

    goto :goto_41

    :cond_3f
    const-wide/16 v3, 0x0

    :goto_41
    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 176
    iget-object v1, p0, Lio/flutter/embedding/android/KeyData;->deviceType:Lio/flutter/embedding/android/KeyData$DeviceType;

    invoke-virtual {v1}, Lio/flutter/embedding/android/KeyData$DeviceType;->getValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_52

    .line 178
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_52
    return-object v2

    .line 163
    :catch_53
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "UTF-8 not supported"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
