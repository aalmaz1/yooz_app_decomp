.class synthetic Lio/flutter/plugins/inapppurchase/Translator$1;
.super Ljava/lang/Object;
.source "Translator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/inapppurchase/Translator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$flutter$plugins$inapppurchase$Messages$PlatformProductType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 80
    invoke-static {}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;->values()[Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/flutter/plugins/inapppurchase/Translator$1;->$SwitchMap$io$flutter$plugins$inapppurchase$Messages$PlatformProductType:[I

    :try_start_9
    sget-object v1, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;->INAPP:Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    invoke-virtual {v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/flutter/plugins/inapppurchase/Translator$1;->$SwitchMap$io$flutter$plugins$inapppurchase$Messages$PlatformProductType:[I

    sget-object v1, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;->SUBS:Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    invoke-virtual {v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
