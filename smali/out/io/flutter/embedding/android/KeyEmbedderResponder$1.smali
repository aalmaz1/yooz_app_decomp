.class synthetic Lio/flutter/embedding/android/KeyEmbedderResponder$1;
.super Ljava/lang/Object;
.source "KeyEmbedderResponder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/KeyEmbedderResponder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$flutter$embedding$android$KeyData$Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 161
    invoke-static {}, Lio/flutter/embedding/android/KeyData$Type;->values()[Lio/flutter/embedding/android/KeyData$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/flutter/embedding/android/KeyEmbedderResponder$1;->$SwitchMap$io$flutter$embedding$android$KeyData$Type:[I

    :try_start_9
    sget-object v1, Lio/flutter/embedding/android/KeyData$Type;->kDown:Lio/flutter/embedding/android/KeyData$Type;

    invoke-virtual {v1}, Lio/flutter/embedding/android/KeyData$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/flutter/embedding/android/KeyEmbedderResponder$1;->$SwitchMap$io$flutter$embedding$android$KeyData$Type:[I

    sget-object v1, Lio/flutter/embedding/android/KeyData$Type;->kUp:Lio/flutter/embedding/android/KeyData$Type;

    invoke-virtual {v1}, Lio/flutter/embedding/android/KeyData$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/flutter/embedding/android/KeyEmbedderResponder$1;->$SwitchMap$io$flutter$embedding$android$KeyData$Type:[I

    sget-object v1, Lio/flutter/embedding/android/KeyData$Type;->kRepeat:Lio/flutter/embedding/android/KeyData$Type;

    invoke-virtual {v1}, Lio/flutter/embedding/android/KeyData$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
