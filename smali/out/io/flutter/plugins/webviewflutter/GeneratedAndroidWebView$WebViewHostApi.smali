.class public interface abstract Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;
.super Ljava/lang/Object;
.source "GeneratedAndroidWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WebViewHostApi"
.end annotation


# direct methods
.method public static getCodec()Lio/flutter/plugin/common/MessageCodec;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/flutter/plugin/common/MessageCodec<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1039
    sget-object v0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApiCodec;->INSTANCE:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApiCodec;

    return-object v0
.end method

.method public static synthetic lambda$setup$0(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 8

    .line 1052
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1053
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1054
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    const/4 v2, 0x0

    if-nez p1, :cond_13

    move-object p1, v2

    goto :goto_1b

    .line 1056
    :cond_13
    :try_start_13
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_1b
    invoke-interface {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->create(Ljava/lang/Long;)V

    .line 1057
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_22

    goto :goto_27

    :catchall_22
    move-exception p0

    .line 1059
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1062
    :goto_27
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$1(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 11

    .line 1077
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1078
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1079
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const/4 v3, 0x1

    .line 1080
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    .line 1081
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x3

    .line 1082
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v5, 0x0

    if-nez v2, :cond_28

    move-object v2, v5

    goto :goto_30

    .line 1085
    :cond_28
    :try_start_28
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1084
    :goto_30
    invoke-interface {p0, v2, v3, v4, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->loadData(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_28 .. :try_end_36} :catchall_37

    goto :goto_3c

    :catchall_37
    move-exception p0

    .line 1091
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1094
    :goto_3c
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$10(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 8

    .line 1331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1332
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1333
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    const/4 v2, 0x0

    if-nez p1, :cond_13

    move-object p1, v2

    goto :goto_1b

    .line 1335
    :cond_13
    :try_start_13
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_1b
    invoke-interface {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->reload(Ljava/lang/Long;)V

    .line 1336
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_22

    goto :goto_27

    :catchall_22
    move-exception p0

    .line 1338
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1341
    :goto_27
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$11(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 9

    .line 1356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1357
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1358
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const/4 v3, 0x1

    .line 1359
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    move-object v2, v3

    goto :goto_22

    .line 1362
    :cond_1a
    :try_start_1a
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1361
    :goto_22
    invoke-interface {p0, v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->clearCache(Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 1364
    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_29

    goto :goto_2e

    :catchall_29
    move-exception p0

    .line 1366
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1369
    :goto_2e
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$12(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 6

    .line 1384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1385
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1386
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    const/4 v2, 0x1

    .line 1387
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1388
    new-instance v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$1;

    invoke-direct {v2, v0, p2}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$1;-><init>(Ljava/util/ArrayList;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V

    if-nez v1, :cond_1e

    const/4 p2, 0x0

    goto :goto_26

    .line 1402
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 1401
    :goto_26
    invoke-interface {p0, p2, p1, v2}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->evaluateJavascript(Ljava/lang/Long;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$Result;)V

    return-void
.end method

.method public static synthetic lambda$setup$13(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 7

    .line 1419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1420
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1421
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    if-nez p1, :cond_12

    const/4 p1, 0x0

    goto :goto_1a

    .line 1424
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_1a
    invoke-interface {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getTitle(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p0

    .line 1425
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_22

    goto :goto_27

    :catchall_22
    move-exception p0

    .line 1427
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1430
    :goto_27
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$14(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 10

    .line 1445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1446
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1447
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const/4 v3, 0x1

    .line 1448
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    const/4 v4, 0x2

    .line 1449
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    const/4 v4, 0x0

    if-nez v2, :cond_21

    move-object v2, v4

    goto :goto_29

    .line 1452
    :cond_21
    :try_start_21
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_29
    if-nez v3, :cond_2d

    move-object v3, v4

    goto :goto_35

    .line 1453
    :cond_2d
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_35
    if-nez p1, :cond_39

    move-object p1, v4

    goto :goto_41

    .line 1454
    :cond_39
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1451
    :goto_41
    invoke-interface {p0, v2, v3, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->scrollTo(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1455
    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_47
    .catchall {:try_start_21 .. :try_end_47} :catchall_48

    goto :goto_4d

    :catchall_48
    move-exception p0

    .line 1457
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1460
    :goto_4d
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$15(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 10

    .line 1475
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1476
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1477
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const/4 v3, 0x1

    .line 1478
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    const/4 v4, 0x2

    .line 1479
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    const/4 v4, 0x0

    if-nez v2, :cond_21

    move-object v2, v4

    goto :goto_29

    .line 1482
    :cond_21
    :try_start_21
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_29
    if-nez v3, :cond_2d

    move-object v3, v4

    goto :goto_35

    .line 1483
    :cond_2d
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_35
    if-nez p1, :cond_39

    move-object p1, v4

    goto :goto_41

    .line 1484
    :cond_39
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1481
    :goto_41
    invoke-interface {p0, v2, v3, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->scrollBy(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1485
    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_47
    .catchall {:try_start_21 .. :try_end_47} :catchall_48

    goto :goto_4d

    :catchall_48
    move-exception p0

    .line 1487
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1490
    :goto_4d
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$16(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 7

    .line 1505
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1506
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1507
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    if-nez p1, :cond_12

    const/4 p1, 0x0

    goto :goto_1a

    .line 1510
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_1a
    invoke-interface {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getScrollX(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    .line 1511
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_22

    goto :goto_27

    :catchall_22
    move-exception p0

    .line 1513
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1516
    :goto_27
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$17(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 7

    .line 1531
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1532
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1533
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    if-nez p1, :cond_12

    const/4 p1, 0x0

    goto :goto_1a

    .line 1536
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_1a
    invoke-interface {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getScrollY(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    .line 1537
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_22

    goto :goto_27

    :catchall_22
    move-exception p0

    .line 1539
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1542
    :goto_27
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$18(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 7

    .line 1557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1558
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1559
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    if-nez p1, :cond_12

    const/4 p1, 0x0

    goto :goto_1a

    .line 1563
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1562
    :goto_1a
    invoke-interface {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getScrollPosition(Ljava/lang/Long;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewPoint;

    move-result-object p0

    .line 1564
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_22

    goto :goto_27

    :catchall_22
    move-exception p0

    .line 1566
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1569
    :goto_27
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$19(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 5

    .line 1584
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1585
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1586
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 1588
    :try_start_e
    invoke-interface {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->setWebContentsDebuggingEnabled(Ljava/lang/Boolean;)V

    const/4 p0, 0x0

    .line 1589
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_1b

    :catchall_16
    move-exception p0

    .line 1591
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1594
    :goto_1b
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$2(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 14

    .line 1109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1110
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1111
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const/4 v3, 0x1

    .line 1112
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    const/4 v3, 0x2

    .line 1113
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    const/4 v3, 0x3

    .line 1114
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    const/4 v3, 0x4

    .line 1115
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    const/4 v3, 0x5

    .line 1116
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v10, p1

    check-cast v10, Ljava/lang/String;

    const/4 p1, 0x0

    if-nez v2, :cond_3b

    move-object v5, p1

    goto :goto_44

    .line 1119
    :cond_3b
    :try_start_3b
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v5, v2

    :goto_44
    move-object v4, p0

    .line 1118
    invoke-interface/range {v4 .. v10}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->loadDataWithBaseUrl(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_4b
    .catchall {:try_start_3b .. :try_end_4b} :catchall_4c

    goto :goto_51

    :catchall_4c
    move-exception p0

    .line 1127
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1130
    :goto_51
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$20(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 9

    .line 1609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1610
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1611
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const/4 v3, 0x1

    .line 1612
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    move-object v2, v3

    goto :goto_22

    .line 1615
    :cond_1a
    :try_start_1a
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_22
    if-nez p1, :cond_26

    move-object p1, v3

    goto :goto_2e

    .line 1618
    :cond_26
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1614
    :goto_2e
    invoke-interface {p0, v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->setWebViewClient(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1619
    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_35

    goto :goto_3a

    :catchall_35
    move-exception p0

    .line 1621
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1624
    :goto_3a
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$21(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 9

    .line 1639
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1640
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1641
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const/4 v3, 0x1

    .line 1642
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    move-object v2, v3

    goto :goto_22

    .line 1645
    :cond_1a
    :try_start_1a
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_22
    if-nez p1, :cond_26

    move-object p1, v3

    goto :goto_2e

    .line 1648
    :cond_26
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1644
    :goto_2e
    invoke-interface {p0, v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->addJavaScriptChannel(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1649
    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_35

    goto :goto_3a

    :catchall_35
    move-exception p0

    .line 1651
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1654
    :goto_3a
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$22(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 9

    .line 1669
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1670
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1671
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const/4 v3, 0x1

    .line 1672
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    move-object v2, v3

    goto :goto_22

    .line 1675
    :cond_1a
    :try_start_1a
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_22
    if-nez p1, :cond_26

    move-object p1, v3

    goto :goto_2e

    .line 1678
    :cond_26
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1674
    :goto_2e
    invoke-interface {p0, v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->removeJavaScriptChannel(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1679
    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_35

    goto :goto_3a

    :catchall_35
    move-exception p0

    .line 1681
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1684
    :goto_3a
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$23(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 9

    .line 1699
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1700
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1701
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const/4 v3, 0x1

    .line 1702
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    move-object v2, v3

    goto :goto_22

    .line 1705
    :cond_1a
    :try_start_1a
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_22
    if-nez p1, :cond_26

    move-object p1, v3

    goto :goto_2e

    .line 1706
    :cond_26
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1704
    :goto_2e
    invoke-interface {p0, v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->setDownloadListener(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1707
    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_35

    goto :goto_3a

    :catchall_35
    move-exception p0

    .line 1709
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1712
    :goto_3a
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$24(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 9

    .line 1727
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1728
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1729
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const/4 v3, 0x1

    .line 1730
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    move-object v2, v3

    goto :goto_22

    .line 1733
    :cond_1a
    :try_start_1a
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_22
    if-nez p1, :cond_26

    move-object p1, v3

    goto :goto_2e

    .line 1734
    :cond_26
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1732
    :goto_2e
    invoke-interface {p0, v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->setWebChromeClient(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1735
    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_35

    goto :goto_3a

    :catchall_35
    move-exception p0

    .line 1737
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1740
    :goto_3a
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$25(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 9

    .line 1755
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1756
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1757
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const/4 v3, 0x1

    .line 1758
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    move-object v2, v3

    goto :goto_22

    .line 1761
    :cond_1a
    :try_start_1a
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_22
    if-nez p1, :cond_26

    move-object p1, v3

    goto :goto_2e

    .line 1762
    :cond_26
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1760
    :goto_2e
    invoke-interface {p0, v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->setBackgroundColor(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1763
    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_35

    goto :goto_3a

    :catchall_35
    move-exception p0

    .line 1765
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1768
    :goto_3a
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$3(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 10

    .line 1145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1146
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1147
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const/4 v3, 0x1

    .line 1148
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    .line 1149
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v4, 0x0

    if-nez v2, :cond_21

    move-object v2, v4

    goto :goto_29

    .line 1152
    :cond_21
    :try_start_21
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1151
    :goto_29
    invoke-interface {p0, v2, v3, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->loadUrl(Ljava/lang/Long;Ljava/lang/String;Ljava/util/Map;)V

    .line 1155
    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_30

    goto :goto_35

    :catchall_30
    move-exception p0

    .line 1157
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1160
    :goto_35
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$4(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 10

    .line 1175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1176
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1177
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const/4 v3, 0x1

    .line 1178
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    .line 1179
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/4 v4, 0x0

    if-nez v2, :cond_21

    move-object v2, v4

    goto :goto_29

    .line 1182
    :cond_21
    :try_start_21
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1181
    :goto_29
    invoke-interface {p0, v2, v3, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->postUrl(Ljava/lang/Long;Ljava/lang/String;[B)V

    .line 1183
    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_30

    goto :goto_35

    :catchall_30
    move-exception p0

    .line 1185
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1188
    :goto_35
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$5(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 7

    .line 1203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1204
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1205
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    if-nez p1, :cond_12

    const/4 p1, 0x0

    goto :goto_1a

    .line 1208
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_1a
    invoke-interface {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getUrl(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p0

    .line 1209
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_22

    goto :goto_27

    :catchall_22
    move-exception p0

    .line 1211
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1214
    :goto_27
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$6(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 7

    .line 1229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1230
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1231
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    if-nez p1, :cond_12

    const/4 p1, 0x0

    goto :goto_1a

    .line 1234
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_1a
    invoke-interface {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->canGoBack(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object p0

    .line 1235
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_22

    goto :goto_27

    :catchall_22
    move-exception p0

    .line 1237
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1240
    :goto_27
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$7(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 7

    .line 1255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1256
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1257
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    if-nez p1, :cond_12

    const/4 p1, 0x0

    goto :goto_1a

    .line 1260
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_1a
    invoke-interface {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->canGoForward(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object p0

    .line 1261
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_22

    goto :goto_27

    :catchall_22
    move-exception p0

    .line 1263
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1266
    :goto_27
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$8(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 8

    .line 1281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1282
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1283
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    const/4 v2, 0x0

    if-nez p1, :cond_13

    move-object p1, v2

    goto :goto_1b

    .line 1285
    :cond_13
    :try_start_13
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_1b
    invoke-interface {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->goBack(Ljava/lang/Long;)V

    .line 1286
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_22

    goto :goto_27

    :catchall_22
    move-exception p0

    .line 1288
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1291
    :goto_27
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$9(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 8

    .line 1306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1307
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1308
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    const/4 v2, 0x0

    if-nez p1, :cond_13

    move-object p1, v2

    goto :goto_1b

    .line 1310
    :cond_13
    :try_start_13
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_1b
    invoke-interface {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->goForward(Ljava/lang/Long;)V

    .line 1311
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_22

    goto :goto_27

    :catchall_22
    move-exception p0

    .line 1313
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1316
    :goto_27
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;)V
    .registers 6

    .line 1044
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v1, "dev.flutter.pigeon.webview_flutter_android.WebViewHostApi.create"

    .line 1048
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_17

    .line 1050
    new-instance v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_1a

    .line 1065
    :cond_17
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 1069
    :goto_1a
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.webview_flutter_android.WebViewHostApi.loadData"

    .line 1073
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_30

    .line 1075
    new-instance v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda2;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_33

    .line 1097
    :cond_30
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 1101
    :goto_33
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.webview_flutter_android.WebViewHostApi.loadDataWithBaseUrl"

    .line 1105
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_49

    .line 1107
    new-instance v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda9;

    invoke-direct {v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda9;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_4c

    .line 1133
    :cond_49
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 1137
    :goto_4c
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.webview_flutter_android.WebViewHostApi.loadUrl"

    .line 1141
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_62

    .line 1143
    new-instance v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda10;

    invoke-direct {v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda10;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_65

    .line 1163
    :cond_62
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 1167
    :goto_65
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.webview_flutter_android.WebViewHostApi.postUrl"

    .line 1171
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_7b

    .line 1173
    new-instance v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda12;

    invoke-direct {v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda12;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_7e

    .line 1191
    :cond_7b
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 1195
    :goto_7e
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.webview_flutter_android.WebViewHostApi.getUrl"

    .line 1199
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_94

    .line 1201
    new-instance v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda13;

    invoke-direct {v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda13;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_97

    .line 1217
    :cond_94
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 1221
    :goto_97
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.webview_flutter_android.WebViewHostApi.canGoBack"

    .line 1225
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_ad

    .line 1227
    new-instance v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda14;

    invoke-direct {v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda14;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_b0

    .line 1243
    :cond_ad
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 1247
    :goto_b0
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.webview_flutter_android.WebViewHostApi.canGoForward"

    .line 1251
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_c6

    .line 1253
    new-instance v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda15;

    invoke-direct {v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda15;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_c9

    .line 1269
    :cond_c6
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 1273
    :goto_c9
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.webview_flutter_android.WebViewHostApi.goBack"

    .line 1277
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_df

    .line 1279
    new-instance v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda16;

    invoke-direct {v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda16;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_e2

    .line 1294
    :cond_df
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 1298
    :goto_e2
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.webview_flutter_android.WebViewHostApi.goForward"

    .line 1302
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_f8

    .line 1304
    new-instance v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda17;

    invoke-direct {v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda17;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_fb

    .line 1319
    :cond_f8
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 1323
    :goto_fb
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.webview_flutter_android.WebViewHostApi.reload"

    .line 1327
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_111

    .line 1329
    new-instance v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda11;

    invoke-direct {v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda11;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_114

    .line 1344
    :cond_111
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 1348
    :goto_114
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.webview_flutter_android.WebViewHostApi.clearCache"

    .line 1352
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_12a

    .line 1354
    new-instance v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda18;

    invoke-direct {v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda18;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_12d

    .line 1372
    :cond_12a
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 1376
    :goto_12d
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.webview_flutter_android.WebViewHostApi.evaluateJavascript"

    .line 1380
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_143

    .line 1382
    new-instance v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda19;

    invoke-direct {v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda19;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_146

    .line 1407
    :cond_143
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 1411
    :goto_146
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.webview_flutter_android.WebViewHostApi.getTitle"

    .line 1415
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_15c

    .line 1417
    new-instance v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda20;

    invoke-direct {v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda20;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_15f

    .line 1433
    :cond_15c
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 1437
    :goto_15f
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.webview_flutter_android.WebViewHostApi.scrollTo"

    .line 1441
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_175

    .line 1443
    new-instance v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda21;

    invoke-direct {v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda21;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_178

    .line 1463
    :cond_175
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 1467
    :goto_178
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.webview_flutter_android.WebViewHostApi.scrollBy"

    .line 1471
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_18e

    .line 1473
    new-instance v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda22;

    invoke-direct {v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda22;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_191

    .line 1493
    :cond_18e
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 1497
    :goto_191
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.webview_flutter_android.WebViewHostApi.getScrollX"

    .line 1501
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_1a7

    .line 1503
    new-instance v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda23;

    invoke-direct {v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda23;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_1aa

    .line 1519
    :cond_1a7
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 1523
    :goto_1aa
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.webview_flutter_android.WebViewHostApi.getScrollY"

    .line 1527
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_1c0

    .line 1529
    new-instance v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda24;

    invoke-direct {v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda24;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_1c3

    .line 1545
    :cond_1c0
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 1549
    :goto_1c3
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.webview_flutter_android.WebViewHostApi.getScrollPosition"

    .line 1553
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_1d9

    .line 1555
    new-instance v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda25;

    invoke-direct {v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda25;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_1dc

    .line 1572
    :cond_1d9
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 1576
    :goto_1dc
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.webview_flutter_android.WebViewHostApi.setWebContentsDebuggingEnabled"

    .line 1580
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_1f2

    .line 1582
    new-instance v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda1;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_1f5

    .line 1597
    :cond_1f2
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 1601
    :goto_1f5
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.webview_flutter_android.WebViewHostApi.setWebViewClient"

    .line 1605
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_20b

    .line 1607
    new-instance v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda3;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_20e

    .line 1627
    :cond_20b
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 1631
    :goto_20e
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.webview_flutter_android.WebViewHostApi.addJavaScriptChannel"

    .line 1635
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_224

    .line 1637
    new-instance v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda4;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_227

    .line 1657
    :cond_224
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 1661
    :goto_227
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.webview_flutter_android.WebViewHostApi.removeJavaScriptChannel"

    .line 1665
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_23d

    .line 1667
    new-instance v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda5;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_240

    .line 1687
    :cond_23d
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 1691
    :goto_240
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.webview_flutter_android.WebViewHostApi.setDownloadListener"

    .line 1695
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_256

    .line 1697
    new-instance v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda6;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_259

    .line 1715
    :cond_256
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 1719
    :goto_259
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.webview_flutter_android.WebViewHostApi.setWebChromeClient"

    .line 1723
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_26f

    .line 1725
    new-instance v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda7;

    invoke-direct {v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda7;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_272

    .line 1743
    :cond_26f
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 1747
    :goto_272
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.webview_flutter_android.WebViewHostApi.setBackgroundColor"

    .line 1751
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_288

    .line 1753
    new-instance p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda8;

    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi$$ExternalSyntheticLambda8;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewHostApi;)V

    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_28b

    .line 1771
    :cond_288
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    :goto_28b
    return-void
.end method


# virtual methods
.method public abstract addJavaScriptChannel(Ljava/lang/Long;Ljava/lang/Long;)V
.end method

.method public abstract canGoBack(Ljava/lang/Long;)Ljava/lang/Boolean;
.end method

.method public abstract canGoForward(Ljava/lang/Long;)Ljava/lang/Boolean;
.end method

.method public abstract clearCache(Ljava/lang/Long;Ljava/lang/Boolean;)V
.end method

.method public abstract create(Ljava/lang/Long;)V
.end method

.method public abstract evaluateJavascript(Ljava/lang/Long;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$Result;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$Result<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getScrollPosition(Ljava/lang/Long;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewPoint;
.end method

.method public abstract getScrollX(Ljava/lang/Long;)Ljava/lang/Long;
.end method

.method public abstract getScrollY(Ljava/lang/Long;)Ljava/lang/Long;
.end method

.method public abstract getTitle(Ljava/lang/Long;)Ljava/lang/String;
.end method

.method public abstract getUrl(Ljava/lang/Long;)Ljava/lang/String;
.end method

.method public abstract goBack(Ljava/lang/Long;)V
.end method

.method public abstract goForward(Ljava/lang/Long;)V
.end method

.method public abstract loadData(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract loadDataWithBaseUrl(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract loadUrl(Ljava/lang/Long;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract postUrl(Ljava/lang/Long;Ljava/lang/String;[B)V
.end method

.method public abstract reload(Ljava/lang/Long;)V
.end method

.method public abstract removeJavaScriptChannel(Ljava/lang/Long;Ljava/lang/Long;)V
.end method

.method public abstract scrollBy(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
.end method

.method public abstract scrollTo(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
.end method

.method public abstract setBackgroundColor(Ljava/lang/Long;Ljava/lang/Long;)V
.end method

.method public abstract setDownloadListener(Ljava/lang/Long;Ljava/lang/Long;)V
.end method

.method public abstract setWebChromeClient(Ljava/lang/Long;Ljava/lang/Long;)V
.end method

.method public abstract setWebContentsDebuggingEnabled(Ljava/lang/Boolean;)V
.end method

.method public abstract setWebViewClient(Ljava/lang/Long;Ljava/lang/Long;)V
.end method
