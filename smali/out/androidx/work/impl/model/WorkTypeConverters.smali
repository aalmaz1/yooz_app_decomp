.class public final Landroidx/work/impl/model/WorkTypeConverters;
.super Ljava/lang/Object;
.source "WorkTypeConverters.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/model/WorkTypeConverters$StateIds;,
        Landroidx/work/impl/model/WorkTypeConverters$BackoffPolicyIds;,
        Landroidx/work/impl/model/WorkTypeConverters$NetworkTypeIds;,
        Landroidx/work/impl/model/WorkTypeConverters$OutOfPolicyIds;,
        Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0004\u001c\u001d\u001e\u001fB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0010\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0004H\u0007J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u0004H\u0007J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u0004H\u0007J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u0004H\u0007J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u000fH\u0007J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0011H\u0007J\u0016\u0010\u0018\u001a\u00020\u000b2\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0007J\u0010\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u0013H\u0007\u00a8\u0006 "
    }
    d2 = {
        "Landroidx/work/impl/model/WorkTypeConverters;",
        "",
        "()V",
        "backoffPolicyToInt",
        "",
        "backoffPolicy",
        "Landroidx/work/BackoffPolicy;",
        "byteArrayToSetOfTriggers",
        "",
        "Landroidx/work/Constraints$ContentUriTrigger;",
        "bytes",
        "",
        "intToBackoffPolicy",
        "value",
        "intToNetworkType",
        "Landroidx/work/NetworkType;",
        "intToOutOfQuotaPolicy",
        "Landroidx/work/OutOfQuotaPolicy;",
        "intToState",
        "Landroidx/work/WorkInfo$State;",
        "networkTypeToInt",
        "networkType",
        "outOfQuotaPolicyToInt",
        "policy",
        "setOfTriggersToByteArray",
        "triggers",
        "stateToInt",
        "state",
        "BackoffPolicyIds",
        "NetworkTypeIds",
        "OutOfPolicyIds",
        "StateIds",
        "work-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/work/impl/model/WorkTypeConverters;

    invoke-direct {v0}, Landroidx/work/impl/model/WorkTypeConverters;-><init>()V

    sput-object v0, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final backoffPolicyToInt(Landroidx/work/BackoffPolicy;)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "backoffPolicy"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    sget-object v0, Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Landroidx/work/BackoffPolicy;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1a

    const/4 v1, 0x2

    if-ne p0, v1, :cond_14

    goto :goto_1b

    .line 129
    :cond_14
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public static final byteArrayToSetOfTriggers([B)Ljava/util/Set;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Set<",
            "Landroidx/work/Constraints$ContentUriTrigger;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bytes"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    .line 262
    array-length v1, p0

    const/4 v2, 0x0

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    if-eqz v1, :cond_16

    return-object v0

    .line 266
    :cond_16
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 267
    move-object p0, v1

    check-cast p0, Ljava/io/Closeable;

    :try_start_1e
    move-object v3, p0

    check-cast v3, Ljava/io/ByteArrayInputStream;
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_67

    const/4 v3, 0x0

    .line 269
    :try_start_22
    new-instance v4, Ljava/io/ObjectInputStream;

    check-cast v1, Ljava/io/InputStream;

    invoke-direct {v4, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v4, Ljava/io/Closeable;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2b} :catch_5d
    .catchall {:try_start_22 .. :try_end_2b} :catchall_67

    :try_start_2b
    move-object v1, v4

    check-cast v1, Ljava/io/ObjectInputStream;

    .line 270
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    :goto_32
    if-ge v2, v5, :cond_50

    .line 271
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 272
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v7

    .line 273
    new-instance v8, Landroidx/work/Constraints$ContentUriTrigger;

    const-string v9, "uri"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v6, v7}, Landroidx/work/Constraints$ContentUriTrigger;-><init>(Landroid/net/Uri;Z)V

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 275
    :cond_50
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_52
    .catchall {:try_start_2b .. :try_end_52} :catchall_56

    .line 269
    :try_start_52
    invoke-static {v4, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_5d
    .catchall {:try_start_52 .. :try_end_55} :catchall_67

    goto :goto_61

    :catchall_56
    move-exception v1

    :try_start_57
    throw v1
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_58

    :catchall_58
    move-exception v2

    :try_start_59
    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5d} :catch_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_67

    :catch_5d
    move-exception v1

    .line 277
    :try_start_5e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 279
    :goto_61
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_63
    .catchall {:try_start_5e .. :try_end_63} :catchall_67

    .line 267
    invoke-static {p0, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_67
    move-exception v0

    :try_start_68
    throw v0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_69

    :catchall_69
    move-exception v1

    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_23

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    .line 144
    sget-object p0, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    goto :goto_25

    .line 145
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not convert "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " to BackoffPolicy"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_23
    sget-object p0, Landroidx/work/BackoffPolicy;->EXPONENTIAL:Landroidx/work/BackoffPolicy;

    :goto_25
    return-object p0
.end method

.method public static final intToNetworkType(I)Landroidx/work/NetworkType;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_41

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_38

    const/4 v0, 0x4

    if-eq p0, v0, :cond_35

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1a

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1a

    .line 190
    sget-object p0, Landroidx/work/NetworkType;->TEMPORARILY_UNMETERED:Landroidx/work/NetworkType;

    return-object p0

    .line 191
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not convert "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " to NetworkType"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_35
    sget-object p0, Landroidx/work/NetworkType;->METERED:Landroidx/work/NetworkType;

    goto :goto_43

    .line 186
    :cond_38
    sget-object p0, Landroidx/work/NetworkType;->NOT_ROAMING:Landroidx/work/NetworkType;

    goto :goto_43

    .line 185
    :cond_3b
    sget-object p0, Landroidx/work/NetworkType;->UNMETERED:Landroidx/work/NetworkType;

    goto :goto_43

    .line 184
    :cond_3e
    sget-object p0, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    goto :goto_43

    .line 183
    :cond_41
    sget-object p0, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    :goto_43
    return-object p0
.end method

.method public static final intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_23

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    .line 224
    sget-object p0, Landroidx/work/OutOfQuotaPolicy;->DROP_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    goto :goto_25

    .line 225
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not convert "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " to OutOfQuotaPolicy"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_23
    sget-object p0, Landroidx/work/OutOfQuotaPolicy;->RUN_AS_NON_EXPEDITED_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    :goto_25
    return-object p0
.end method

.method public static final intToState(I)Landroidx/work/WorkInfo$State;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_3b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_38

    const/4 v0, 0x2

    if-eq p0, v0, :cond_35

    const/4 v0, 0x3

    if-eq p0, v0, :cond_32

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2f

    const/4 v0, 0x5

    if-ne p0, v0, :cond_14

    .line 113
    sget-object p0, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    goto :goto_3d

    .line 114
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not convert "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " to State"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_2f
    sget-object p0, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    goto :goto_3d

    .line 111
    :cond_32
    sget-object p0, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    goto :goto_3d

    .line 110
    :cond_35
    sget-object p0, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    goto :goto_3d

    .line 109
    :cond_38
    sget-object p0, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    goto :goto_3d

    .line 108
    :cond_3b
    sget-object p0, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    :goto_3d
    return-object p0
.end method

.method public static final networkTypeToInt(Landroidx/work/NetworkType;)I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "networkType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    sget-object v0, Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p0}, Landroidx/work/NetworkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_44

    const/4 v2, 0x2

    if-eq v0, v2, :cond_45

    const/4 v1, 0x3

    if-eq v0, v1, :cond_42

    const/4 v2, 0x4

    if-eq v0, v2, :cond_45

    const/4 v1, 0x5

    if-eq v0, v1, :cond_42

    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_27

    sget-object v0, Landroidx/work/NetworkType;->TEMPORARILY_UNMETERED:Landroidx/work/NetworkType;

    if-ne p0, v0, :cond_27

    goto :goto_45

    .line 168
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not convert "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " to int"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    move v1, v2

    goto :goto_45

    :cond_44
    const/4 v1, 0x0

    :cond_45
    :goto_45
    return v1
.end method

.method public static final outOfQuotaPolicyToInt(Landroidx/work/OutOfQuotaPolicy;)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "policy"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    sget-object v0, Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {p0}, Landroidx/work/OutOfQuotaPolicy;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1a

    const/4 v1, 0x2

    if-ne p0, v1, :cond_14

    goto :goto_1b

    .line 208
    :cond_14
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public static final setOfTriggersToByteArray(Ljava/util/Set;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/work/Constraints$ContentUriTrigger;",
            ">;)[B"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "triggers"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    .line 240
    :cond_f
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 241
    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    :try_start_17
    move-object v2, v1

    check-cast v2, Ljava/io/ByteArrayOutputStream;

    .line 242
    new-instance v2, Ljava/io/ObjectOutputStream;

    move-object v3, v0

    check-cast v3, Ljava/io/OutputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    check-cast v2, Ljava/io/Closeable;
    :try_end_24
    .catchall {:try_start_17 .. :try_end_24} :catchall_6d

    :try_start_24
    move-object v3, v2

    check-cast v3, Ljava/io/ObjectOutputStream;

    .line 243
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 244
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/work/Constraints$ContentUriTrigger;

    .line 245
    invoke-virtual {v4}, Landroidx/work/Constraints$ContentUriTrigger;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v4}, Landroidx/work/Constraints$ContentUriTrigger;->isTriggeredForDescendants()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    goto :goto_32

    .line 248
    :cond_51
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_53
    .catchall {:try_start_24 .. :try_end_53} :catchall_66

    const/4 p0, 0x0

    .line 242
    :try_start_54
    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 249
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_6d

    .line 241
    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 250
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string v0, "outputStream.toByteArray()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :catchall_66
    move-exception p0

    .line 242
    :try_start_67
    throw p0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_68

    :catchall_68
    move-exception v0

    :try_start_69
    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_6d

    :catchall_6d
    move-exception p0

    .line 241
    :try_start_6e
    throw p0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6f

    :catchall_6f
    move-exception v0

    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final stateToInt(Landroidx/work/WorkInfo$State;)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "state"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    sget-object v0, Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Landroidx/work/WorkInfo$State;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_22

    .line 94
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_16
    const/4 p0, 0x5

    goto :goto_21

    :pswitch_18
    const/4 p0, 0x4

    goto :goto_21

    :pswitch_1a
    const/4 p0, 0x3

    goto :goto_21

    :pswitch_1c
    const/4 p0, 0x2

    goto :goto_21

    :pswitch_1e
    const/4 p0, 0x1

    goto :goto_21

    :pswitch_20
    const/4 p0, 0x0

    :goto_21
    return p0

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1e
        :pswitch_1c
        :pswitch_1a
        :pswitch_18
        :pswitch_16
    .end packed-switch
.end method
