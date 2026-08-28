.class Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApiCodec;
.super Lio/flutter/plugin/common/StandardMessageCodec;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/inapppurchase/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InAppPurchaseCallbackApiCodec"
.end annotation


# static fields
.field public static final INSTANCE:Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApiCodec;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 3036
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApiCodec;

    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApiCodec;-><init>()V

    sput-object v0, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApiCodec;->INSTANCE:Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApiCodec;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 3039
    invoke-direct {p0}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    return-void
.end method


# virtual methods
.method protected readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;
    .registers 3

    packed-switch p1, :pswitch_data_4a

    .line 3057
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3055
    :pswitch_8
    invoke-virtual {p0, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;

    move-result-object p1

    return-object p1

    .line 3053
    :pswitch_13
    invoke-virtual {p0, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceDetails;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceDetails;

    move-result-object p1

    return-object p1

    .line 3051
    :pswitch_1e
    invoke-virtual {p0, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse;

    move-result-object p1

    return-object p1

    .line 3049
    :pswitch_29
    invoke-virtual {p0, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;

    move-result-object p1

    return-object p1

    .line 3047
    :pswitch_34
    invoke-virtual {p0, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    move-result-object p1

    return-object p1

    .line 3045
    :pswitch_3f
    invoke-virtual {p0, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;

    move-result-object p1

    return-object p1

    :pswitch_data_4a
    .packed-switch -0x80
        :pswitch_3f
        :pswitch_34
        :pswitch_29
        :pswitch_1e
        :pswitch_13
        :pswitch_8
    .end packed-switch
.end method

.method protected writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V
    .registers 4

    .line 3063
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;

    if-eqz v0, :cond_13

    const/16 v0, 0x80

    .line 3064
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3065
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;

    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_75

    .line 3066
    :cond_13
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    if-eqz v0, :cond_26

    const/16 v0, 0x81

    .line 3067
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3068
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_75

    .line 3069
    :cond_26
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;

    if-eqz v0, :cond_39

    const/16 v0, 0x82

    .line 3070
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3071
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;

    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_75

    .line 3072
    :cond_39
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse;

    if-eqz v0, :cond_4c

    const/16 v0, 0x83

    .line 3073
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3074
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse;

    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_75

    .line 3075
    :cond_4c
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceDetails;

    if-eqz v0, :cond_5f

    const/16 v0, 0x84

    .line 3076
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3077
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceDetails;

    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceDetails;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_75

    .line 3078
    :cond_5f
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;

    if-eqz v0, :cond_72

    const/16 v0, 0x85

    .line 3079
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3080
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;

    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_75

    .line 3082
    :cond_72
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    :goto_75
    return-void
.end method
