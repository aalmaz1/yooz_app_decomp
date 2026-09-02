.class synthetic Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl$2;
.super Ljava/lang/Object;
.source "BillingClientFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$flutter$plugins$inapppurchase$Messages$PlatformBillingChoiceMode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 26
    invoke-static {}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingChoiceMode;->values()[Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingChoiceMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl$2;->$SwitchMap$io$flutter$plugins$inapppurchase$Messages$PlatformBillingChoiceMode:[I

    :try_start_9
    sget-object v1, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingChoiceMode;->ALTERNATIVE_BILLING_ONLY:Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingChoiceMode;

    invoke-virtual {v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingChoiceMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl$2;->$SwitchMap$io$flutter$plugins$inapppurchase$Messages$PlatformBillingChoiceMode:[I

    sget-object v1, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingChoiceMode;->USER_CHOICE_BILLING:Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingChoiceMode;

    invoke-virtual {v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingChoiceMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl$2;->$SwitchMap$io$flutter$plugins$inapppurchase$Messages$PlatformBillingChoiceMode:[I

    sget-object v1, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingChoiceMode;->PLAY_BILLING_ONLY:Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingChoiceMode;

    invoke-virtual {v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingChoiceMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
