.class public final synthetic Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;
.super Ljava/lang/Object;
.source "WorkTypeConverters.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/model/WorkTypeConverters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I

.field public static final synthetic $EnumSwitchMapping$3:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    invoke-static {}, Landroidx/work/WorkInfo$State;->values()[Landroidx/work/WorkInfo$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_8
    sget-object v2, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    invoke-virtual {v2}, Landroidx/work/WorkInfo$State;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_10} :catch_10

    :catch_10
    const/4 v2, 0x2

    :try_start_11
    sget-object v3, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    invoke-virtual {v3}, Landroidx/work/WorkInfo$State;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_19} :catch_19

    :catch_19
    const/4 v3, 0x3

    :try_start_1a
    sget-object v4, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    invoke-virtual {v4}, Landroidx/work/WorkInfo$State;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_22} :catch_22

    :catch_22
    const/4 v4, 0x4

    :try_start_23
    sget-object v5, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    invoke-virtual {v5}, Landroidx/work/WorkInfo$State;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2b} :catch_2b

    :catch_2b
    const/4 v5, 0x5

    :try_start_2c
    sget-object v6, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    invoke-virtual {v6}, Landroidx/work/WorkInfo$State;->ordinal()I

    move-result v6

    aput v5, v0, v6
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_34} :catch_34

    :catch_34
    :try_start_34
    sget-object v6, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    invoke-virtual {v6}, Landroidx/work/WorkInfo$State;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v0, v6
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3d} :catch_3d

    :catch_3d
    sput-object v0, Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Landroidx/work/BackoffPolicy;->values()[Landroidx/work/BackoffPolicy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_46
    sget-object v6, Landroidx/work/BackoffPolicy;->EXPONENTIAL:Landroidx/work/BackoffPolicy;

    invoke-virtual {v6}, Landroidx/work/BackoffPolicy;->ordinal()I

    move-result v6

    aput v1, v0, v6
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_4e} :catch_4e

    :catch_4e
    :try_start_4e
    sget-object v6, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    invoke-virtual {v6}, Landroidx/work/BackoffPolicy;->ordinal()I

    move-result v6

    aput v2, v0, v6
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_56} :catch_56

    :catch_56
    sput-object v0, Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Landroidx/work/NetworkType;->values()[Landroidx/work/NetworkType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_5f
    sget-object v6, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    invoke-virtual {v6}, Landroidx/work/NetworkType;->ordinal()I

    move-result v6

    aput v1, v0, v6
    :try_end_67
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_67} :catch_67

    :catch_67
    :try_start_67
    sget-object v6, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    invoke-virtual {v6}, Landroidx/work/NetworkType;->ordinal()I

    move-result v6

    aput v2, v0, v6
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67 .. :try_end_6f} :catch_6f

    :catch_6f
    :try_start_6f
    sget-object v6, Landroidx/work/NetworkType;->UNMETERED:Landroidx/work/NetworkType;

    invoke-virtual {v6}, Landroidx/work/NetworkType;->ordinal()I

    move-result v6

    aput v3, v0, v6
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_77} :catch_77

    :catch_77
    :try_start_77
    sget-object v3, Landroidx/work/NetworkType;->NOT_ROAMING:Landroidx/work/NetworkType;

    invoke-virtual {v3}, Landroidx/work/NetworkType;->ordinal()I

    move-result v3

    aput v4, v0, v3
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_7f} :catch_7f

    :catch_7f
    :try_start_7f
    sget-object v3, Landroidx/work/NetworkType;->METERED:Landroidx/work/NetworkType;

    invoke-virtual {v3}, Landroidx/work/NetworkType;->ordinal()I

    move-result v3

    aput v5, v0, v3
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_87} :catch_87

    :catch_87
    sput-object v0, Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-static {}, Landroidx/work/OutOfQuotaPolicy;->values()[Landroidx/work/OutOfQuotaPolicy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_90
    sget-object v3, Landroidx/work/OutOfQuotaPolicy;->RUN_AS_NON_EXPEDITED_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    invoke-virtual {v3}, Landroidx/work/OutOfQuotaPolicy;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_98} :catch_98

    :catch_98
    :try_start_98
    sget-object v1, Landroidx/work/OutOfQuotaPolicy;->DROP_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    invoke-virtual {v1}, Landroidx/work/OutOfQuotaPolicy;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_98 .. :try_end_a0} :catch_a0

    :catch_a0
    sput-object v0, Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;->$EnumSwitchMapping$3:[I

    return-void
.end method
