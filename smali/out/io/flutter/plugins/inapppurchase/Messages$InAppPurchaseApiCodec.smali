.class Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;
.super Lio/flutter/plugin/common/StandardMessageCodec;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/inapppurchase/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InAppPurchaseApiCodec"
.end annotation


# static fields
.field public static final INSTANCE:Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2460
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;

    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;-><init>()V

    sput-object v0, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->INSTANCE:Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 2462
    invoke-direct {p0}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    return-void
.end method


# virtual methods
.method protected readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;
    .registers 3

    packed-switch p1, :pswitch_data_ae

    .line 2500
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2498
    :pswitch_8
    invoke-virtual {p0, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails;

    move-result-object p1

    return-object p1

    .line 2496
    :pswitch_13
    invoke-virtual {p0, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;

    move-result-object p1

    return-object p1

    .line 2494
    :pswitch_1e
    invoke-virtual {p0, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse;

    move-result-object p1

    return-object p1

    .line 2492
    :pswitch_29
    invoke-virtual {p0, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse;

    move-result-object p1

    return-object p1

    .line 2490
    :pswitch_34
    invoke-virtual {p0, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord;

    move-result-object p1

    return-object p1

    .line 2488
    :pswitch_3f
    invoke-virtual {p0, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;

    move-result-object p1

    return-object p1

    .line 2486
    :pswitch_4a
    invoke-virtual {p0, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse;

    move-result-object p1

    return-object p1

    .line 2484
    :pswitch_55
    invoke-virtual {p0, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;

    move-result-object p1

    return-object p1

    .line 2482
    :pswitch_60
    invoke-virtual {p0, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;

    move-result-object p1

    return-object p1

    .line 2480
    :pswitch_6b
    invoke-virtual {p0, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 2479
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;

    move-result-object p1

    return-object p1

    .line 2477
    :pswitch_76
    invoke-virtual {p0, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    move-result-object p1

    return-object p1

    .line 2475
    :pswitch_81
    invoke-virtual {p0, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;

    move-result-object p1

    return-object p1

    .line 2473
    :pswitch_8c
    invoke-virtual {p0, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse;

    move-result-object p1

    return-object p1

    .line 2471
    :pswitch_97
    invoke-virtual {p0, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 2470
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse;

    move-result-object p1

    return-object p1

    .line 2468
    :pswitch_a2
    invoke-virtual {p0, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_ae
    .packed-switch -0x80
        :pswitch_a2
        :pswitch_97
        :pswitch_8c
        :pswitch_81
        :pswitch_76
        :pswitch_6b
        :pswitch_60
        :pswitch_55
        :pswitch_4a
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

    .line 2506
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;

    if-eqz v0, :cond_14

    const/16 v0, 0x80

    .line 2507
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2508
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;

    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto/16 :goto_129

    .line 2509
    :cond_14
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse;

    if-eqz v0, :cond_28

    const/16 v0, 0x81

    .line 2510
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2511
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse;

    .line 2512
    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse;->toList()Ljava/util/ArrayList;

    move-result-object p2

    .line 2511
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto/16 :goto_129

    .line 2513
    :cond_28
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse;

    if-eqz v0, :cond_3c

    const/16 v0, 0x82

    .line 2514
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2515
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse;

    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto/16 :goto_129

    .line 2516
    :cond_3c
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;

    if-eqz v0, :cond_50

    const/16 v0, 0x83

    .line 2517
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2518
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;

    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto/16 :goto_129

    .line 2519
    :cond_50
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    if-eqz v0, :cond_64

    const/16 v0, 0x84

    .line 2520
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2521
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto/16 :goto_129

    .line 2522
    :cond_64
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;

    if-eqz v0, :cond_78

    const/16 v0, 0x85

    .line 2523
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2524
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;

    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto/16 :goto_129

    .line 2525
    :cond_78
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;

    if-eqz v0, :cond_8c

    const/16 v0, 0x86

    .line 2526
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2527
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;

    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto/16 :goto_129

    .line 2528
    :cond_8c
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;

    if-eqz v0, :cond_a0

    const/16 v0, 0x87

    .line 2529
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2530
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;

    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto/16 :goto_129

    .line 2531
    :cond_a0
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse;

    if-eqz v0, :cond_b4

    const/16 v0, 0x88

    .line 2532
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2533
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse;

    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto/16 :goto_129

    .line 2534
    :cond_b4
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;

    if-eqz v0, :cond_c7

    const/16 v0, 0x89

    .line 2535
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2536
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;

    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_129

    .line 2537
    :cond_c7
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord;

    if-eqz v0, :cond_da

    const/16 v0, 0x8a

    .line 2538
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2539
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord;

    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_129

    .line 2540
    :cond_da
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse;

    if-eqz v0, :cond_ed

    const/16 v0, 0x8b

    .line 2541
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2542
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse;

    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_129

    .line 2543
    :cond_ed
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse;

    if-eqz v0, :cond_100

    const/16 v0, 0x8c

    .line 2544
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2545
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse;

    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_129

    .line 2546
    :cond_100
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;

    if-eqz v0, :cond_113

    const/16 v0, 0x8d

    .line 2547
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2548
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;

    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_129

    .line 2549
    :cond_113
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails;

    if-eqz v0, :cond_126

    const/16 v0, 0x8e

    .line 2550
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2551
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails;

    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_129

    .line 2553
    :cond_126
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    :goto_129
    return-void
.end method
