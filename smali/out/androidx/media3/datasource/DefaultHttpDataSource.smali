.class public Landroidx/media3/datasource/DefaultHttpDataSource;
.super Landroidx/media3/datasource/BaseDataSource;
.source "DefaultHttpDataSource.java"

# interfaces
.implements Landroidx/media3/datasource/HttpDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;,
        Landroidx/media3/datasource/DefaultHttpDataSource$Factory;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONNECT_TIMEOUT_MILLIS:I = 0x1f40

.field public static final DEFAULT_READ_TIMEOUT_MILLIS:I = 0x1f40

.field private static final HTTP_STATUS_PERMANENT_REDIRECT:I = 0x134

.field private static final HTTP_STATUS_TEMPORARY_REDIRECT:I = 0x133

.field private static final MAX_BYTES_TO_DRAIN:J = 0x800L

.field private static final MAX_REDIRECTS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "DefaultHttpDataSource"


# instance fields
.field private final allowCrossProtocolRedirects:Z

.field private bytesRead:J

.field private bytesToRead:J

.field private final connectTimeoutMillis:I

.field private connection:Ljava/net/HttpURLConnection;

.field private final contentTypePredicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final crossProtocolRedirectsForceOriginal:Z

.field private dataSpec:Landroidx/media3/datasource/DataSpec;

.field private final defaultRequestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

.field private inputStream:Ljava/io/InputStream;

.field private final keepPostFor302Redirects:Z

.field private opened:Z

.field private final readTimeoutMillis:I

.field private final requestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

.field private responseCode:I

.field private final userAgent:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;IIZZLandroidx/media3/datasource/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZZ",
            "Landroidx/media3/datasource/HttpDataSource$RequestProperties;",
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 280
    invoke-direct {p0, v0}, Landroidx/media3/datasource/BaseDataSource;-><init>(Z)V

    .line 281
    iput-object p1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->userAgent:Ljava/lang/String;

    .line 282
    iput p2, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connectTimeoutMillis:I

    .line 283
    iput p3, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->readTimeoutMillis:I

    .line 284
    iput-boolean p4, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    .line 285
    iput-boolean p5, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->crossProtocolRedirectsForceOriginal:Z

    if-eqz p4, :cond_1b

    if-nez p5, :cond_13

    goto :goto_1b

    .line 287
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "crossProtocolRedirectsForceOriginal should not be set if allowCrossProtocolRedirects is true"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 291
    :cond_1b
    :goto_1b
    iput-object p6, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->defaultRequestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    .line 292
    iput-object p7, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->contentTypePredicate:Lcom/google/common/base/Predicate;

    .line 293
    new-instance p1, Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-direct {p1}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->requestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    .line 294
    iput-boolean p8, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->keepPostFor302Redirects:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIZZLandroidx/media3/datasource/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;ZLandroidx/media3/datasource/DefaultHttpDataSource$1;)V
    .registers 10

    .line 65
    invoke-direct/range {p0 .. p8}, Landroidx/media3/datasource/DefaultHttpDataSource;-><init>(Ljava/lang/String;IIZZLandroidx/media3/datasource/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;Z)V

    return-void
.end method

.method private closeConnectionQuietly()V
    .registers 4

    .line 835
    iget-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_13

    .line 837
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    const-string v1, "DefaultHttpDataSource"

    const-string v2, "Unexpected error while disconnecting"

    .line 839
    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10
    const/4 v0, 0x0

    .line 841
    iput-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    :cond_13
    return-void
.end method

.method private handleRedirect(Ljava/net/URL;Ljava/lang/String;Landroidx/media3/datasource/DataSpec;)Ljava/net/URL;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x7d1

    if-eqz p2, :cond_91

    .line 673
    :try_start_5
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_a} :catch_8a

    .line 683
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    const-string v3, "https"

    .line 684
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    const-string v3, "http"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_34

    .line 685
    :cond_1f
    new-instance p1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported protocol redirect: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p3, v1, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Landroidx/media3/datasource/DataSpec;II)V

    throw p1

    .line 691
    :cond_34
    :goto_34
    iget-boolean v3, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    if-nez v3, :cond_89

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_89

    .line 692
    iget-boolean v3, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->crossProtocolRedirectsForceOriginal:Z

    if-eqz v3, :cond_60

    .line 704
    :try_start_46
    new-instance v3, Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/net/MalformedURLException; {:try_start_46 .. :try_end_57} :catch_59

    move-object v2, v3

    goto :goto_89

    :catch_59
    move-exception p1

    .line 706
    new-instance p2, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    invoke-direct {p2, p1, p3, v1, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V

    throw p2

    .line 693
    :cond_60
    new-instance v2, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Disallowed cross-protocol redirect ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " to "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, p3, v1, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Landroidx/media3/datasource/DataSpec;II)V

    throw v2

    :cond_89
    :goto_89
    return-object v2

    :catch_8a
    move-exception p1

    .line 675
    new-instance p2, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    invoke-direct {p2, p1, p3, v1, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V

    throw p2

    .line 664
    :cond_91
    new-instance p1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    const-string p2, "Null location redirect"

    invoke-direct {p1, p2, p3, v1, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Landroidx/media3/datasource/DataSpec;II)V

    throw p1
.end method

.method private static isCompressed(Ljava/net/HttpURLConnection;)Z
    .registers 2

    const-string v0, "Content-Encoding"

    .line 846
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "gzip"

    .line 847
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private makeConnection(Landroidx/media3/datasource/DataSpec;)Ljava/net/HttpURLConnection;
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 510
    new-instance v1, Ljava/net/URL;

    iget-object v0, v12, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 511
    iget v2, v12, Landroidx/media3/datasource/DataSpec;->httpMethod:I

    .line 512
    iget-object v3, v12, Landroidx/media3/datasource/DataSpec;->httpBody:[B

    .line 513
    iget-wide v13, v12, Landroidx/media3/datasource/DataSpec;->position:J

    .line 514
    iget-wide v9, v12, Landroidx/media3/datasource/DataSpec;->length:J

    const/4 v15, 0x1

    .line 515
    invoke-virtual {v12, v15}, Landroidx/media3/datasource/DataSpec;->isFlagSet(I)Z

    move-result v16

    .line 517
    iget-boolean v0, v11, Landroidx/media3/datasource/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    if-nez v0, :cond_38

    iget-boolean v0, v11, Landroidx/media3/datasource/DefaultHttpDataSource;->crossProtocolRedirectsForceOriginal:Z

    if-nez v0, :cond_38

    iget-boolean v0, v11, Landroidx/media3/datasource/DefaultHttpDataSource;->keepPostFor302Redirects:Z

    if-nez v0, :cond_38

    const/4 v15, 0x1

    .line 522
    iget-object v12, v12, Landroidx/media3/datasource/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    move-object/from16 v0, p0

    move-wide v4, v13

    move-wide v6, v9

    move/from16 v8, v16

    move v9, v15

    move-object v10, v12

    invoke-direct/range {v0 .. v10}, Landroidx/media3/datasource/DefaultHttpDataSource;->makeConnection(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    :cond_38
    const/16 v17, 0x0

    move-object v8, v1

    move v6, v2

    move-object/from16 v18, v3

    move/from16 v0, v17

    :goto_40
    add-int/lit8 v7, v0, 0x1

    const/16 v1, 0x14

    if-gt v0, v1, :cond_c8

    const/16 v19, 0x0

    .line 537
    iget-object v4, v12, Landroidx/media3/datasource/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v6

    move-object/from16 v3, v18

    move-object/from16 v20, v4

    move-wide v4, v13

    move-wide/from16 v21, v13

    move v13, v6

    move v14, v7

    move-wide v6, v9

    move-object/from16 v23, v8

    move/from16 v8, v16

    move-wide/from16 v24, v9

    move/from16 v9, v19

    move-object/from16 v10, v20

    .line 538
    invoke-direct/range {v0 .. v10}, Landroidx/media3/datasource/DefaultHttpDataSource;->makeConnection(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 547
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const-string v2, "Location"

    .line 548
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12f

    const/16 v4, 0x12d

    const/16 v5, 0x12c

    const/16 v6, 0x12e

    if-eq v13, v15, :cond_7d

    const/4 v7, 0x3

    if-ne v13, v7, :cond_8e

    :cond_7d
    if-eq v1, v5, :cond_b6

    if-eq v1, v4, :cond_b6

    if-eq v1, v6, :cond_b6

    if-eq v1, v3, :cond_b6

    const/16 v7, 0x133

    if-eq v1, v7, :cond_b6

    const/16 v7, 0x134

    if-ne v1, v7, :cond_8e

    goto :goto_b6

    :cond_8e
    const/4 v7, 0x2

    if-ne v13, v7, :cond_b5

    if-eq v1, v5, :cond_99

    if-eq v1, v4, :cond_99

    if-eq v1, v6, :cond_99

    if-ne v1, v3, :cond_b5

    .line 563
    :cond_99
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 564
    iget-boolean v0, v11, Landroidx/media3/datasource/DefaultHttpDataSource;->keepPostFor302Redirects:Z

    if-eqz v0, :cond_a4

    if-ne v1, v6, :cond_a4

    move v0, v15

    goto :goto_a6

    :cond_a4
    move/from16 v0, v17

    :goto_a6
    if-nez v0, :cond_ac

    const/16 v18, 0x0

    move v6, v15

    goto :goto_ad

    :cond_ac
    move v6, v13

    :goto_ad
    move-object/from16 v1, v23

    .line 571
    invoke-direct {v11, v1, v2, v12}, Landroidx/media3/datasource/DefaultHttpDataSource;->handleRedirect(Ljava/net/URL;Ljava/lang/String;Landroidx/media3/datasource/DataSpec;)Ljava/net/URL;

    move-result-object v0

    move-object v8, v0

    goto :goto_c1

    :cond_b5
    return-object v0

    :cond_b6
    :goto_b6
    move-object/from16 v1, v23

    .line 556
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 557
    invoke-direct {v11, v1, v2, v12}, Landroidx/media3/datasource/DefaultHttpDataSource;->handleRedirect(Ljava/net/URL;Ljava/lang/String;Landroidx/media3/datasource/DataSpec;)Ljava/net/URL;

    move-result-object v0

    move-object v8, v0

    move v6, v13

    :goto_c1
    move v0, v14

    move-wide/from16 v13, v21

    move-wide/from16 v9, v24

    goto/16 :goto_40

    :cond_c8
    move v14, v7

    .line 578
    new-instance v0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    new-instance v1, Ljava/net/NoRouteToHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Too many redirects: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x7d1

    invoke-direct {v0, v1, v12, v2, v15}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V

    throw v0
.end method

.method private makeConnection(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I[BJJZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 607
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/DefaultHttpDataSource;->openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 608
    iget v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connectTimeoutMillis:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 609
    iget v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->readTimeoutMillis:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 611
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 612
    iget-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->defaultRequestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    if-eqz v1, :cond_1e

    .line 613
    invoke-virtual {v1}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 615
    :cond_1e
    iget-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->requestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-virtual {v1}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 616
    invoke-interface {v0, p10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 618
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p10

    invoke-interface {p10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p10

    :goto_32
    invoke-interface {p10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {p10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 619
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    .line 622
    :cond_4e
    invoke-static {p4, p5, p6, p7}, Landroidx/media3/datasource/HttpUtil;->buildRangeRequestHeader(JJ)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_59

    const-string p5, "Range"

    .line 624
    invoke-virtual {p1, p5, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :cond_59
    iget-object p4, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->userAgent:Ljava/lang/String;

    if-eqz p4, :cond_62

    const-string p5, "User-Agent"

    .line 627
    invoke-virtual {p1, p5, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    if-eqz p8, :cond_67

    const-string p4, "gzip"

    goto :goto_69

    :cond_67
    const-string p4, "identity"

    :goto_69
    const-string p5, "Accept-Encoding"

    .line 629
    invoke-virtual {p1, p5, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-virtual {p1, p9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz p3, :cond_75

    const/4 p4, 0x1

    goto :goto_76

    :cond_75
    const/4 p4, 0x0

    .line 631
    :goto_76
    invoke-virtual {p1, p4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 632
    invoke-static {p2}, Landroidx/media3/datasource/DataSpec;->getStringForHttpMethod(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_94

    .line 635
    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 636
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 637
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 638
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 639
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_97

    .line 641
    :cond_94
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    :goto_97
    return-object p1
.end method

.method private static maybeTerminateInputStream(Ljava/net/HttpURLConnection;J)V
    .registers 5

    if-eqz p0, :cond_5b

    .line 800
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_9

    goto :goto_5b

    .line 805
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1b

    .line 808
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_22

    return-void

    :cond_1b
    const-wide/16 v0, 0x800

    cmp-long p1, p1, v0

    if-gtz p1, :cond_22

    return-void

    .line 816
    :cond_22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    .line 817
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3a

    const-string p2, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 819
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 820
    :cond_3a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    .line 822
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    const-string/jumbo p2, "unexpectedEndOfInput"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x1

    .line 823
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array p2, v0, [Ljava/lang/Object;

    .line 824
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_5b} :catch_5b

    :catch_5b
    :cond_5b
    :goto_5b
    return-void
.end method

.method private readInternal([BII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 769
    :cond_4
    iget-wide v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1d

    .line 770
    iget-wide v4, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesRead:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-nez v2, :cond_17

    return v3

    :cond_17
    int-to-long v4, p3

    .line 774
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 777
    :cond_1d
    iget-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v3, :cond_2c

    return v3

    .line 782
    :cond_2c
    iget-wide p2, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesRead:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesRead:J

    .line 783
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesTransferred(I)V

    return p1
.end method

.method private skipFully(JLandroidx/media3/datasource/DataSpec;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    return-void

    :cond_7
    const/16 v2, 0x1000

    new-array v3, v2, [B

    :goto_b
    cmp-long v4, p1, v0

    if-lez v4, :cond_4b

    int-to-long v4, v2

    .line 731
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 732
    iget-object v5, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-static {v5}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 733
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_3e

    const/4 v5, -0x1

    if-eq v4, v5, :cond_36

    int-to-long v5, v4

    sub-long/2addr p1, v5

    .line 747
    invoke-virtual {p0, v4}, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesTransferred(I)V

    goto :goto_b

    .line 741
    :cond_36
    new-instance p1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    const/16 p2, 0x7d8

    invoke-direct {p1, p3, p2, v6}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Landroidx/media3/datasource/DataSpec;II)V

    throw p1

    .line 734
    :cond_3e
    new-instance p1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    new-instance p2, Ljava/io/InterruptedIOException;

    invoke-direct {p2}, Ljava/io/InterruptedIOException;-><init>()V

    const/16 v0, 0x7d0

    invoke-direct {p1, p2, p3, v0, v6}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V

    throw p1

    :cond_4b
    return-void
.end method


# virtual methods
.method public clearAllRequestProperties()V
    .registers 2

    .line 345
    iget-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->requestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-virtual {v0}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;->clear()V

    return-void
.end method

.method public clearRequestProperty(Ljava/lang/String;)V
    .registers 3

    .line 338
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->requestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 483
    :try_start_2
    iget-object v2, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_2e

    .line 486
    iget-wide v3, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_f

    goto :goto_13

    :cond_f
    iget-wide v5, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesRead:J

    sub-long v5, v3, v5

    .line 487
    :goto_13
    iget-object v3, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-static {v3, v5, v6}, Landroidx/media3/datasource/DefaultHttpDataSource;->maybeTerminateInputStream(Ljava/net/HttpURLConnection;J)V
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_3d

    .line 489
    :try_start_18
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1c
    .catchall {:try_start_18 .. :try_end_1b} :catchall_3d

    goto :goto_2e

    :catch_1c
    move-exception v2

    .line 491
    :try_start_1d
    new-instance v3, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    iget-object v4, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 493
    invoke-static {v4}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/datasource/DataSpec;

    const/16 v5, 0x7d0

    const/4 v6, 0x3

    invoke-direct {v3, v2, v4, v5, v6}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V

    throw v3
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_3d

    .line 499
    :cond_2e
    :goto_2e
    iput-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 500
    invoke-direct {p0}, Landroidx/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 501
    iget-boolean v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->opened:Z

    if-eqz v1, :cond_3c

    .line 502
    iput-boolean v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->opened:Z

    .line 503
    invoke-virtual {p0}, Landroidx/media3/datasource/DefaultHttpDataSource;->transferEnded()V

    :cond_3c
    return-void

    :catchall_3d
    move-exception v2

    .line 499
    iput-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 500
    invoke-direct {p0}, Landroidx/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 501
    iget-boolean v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->opened:Z

    if-eqz v1, :cond_4c

    .line 502
    iput-boolean v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->opened:Z

    .line 503
    invoke-virtual {p0}, Landroidx/media3/datasource/DefaultHttpDataSource;->transferEnded()V

    .line 505
    :cond_4c
    throw v2
.end method

.method public getResponseCode()I
    .registers 2

    .line 307
    iget-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_8

    iget v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->responseCode:I

    if-gtz v0, :cond_9

    :cond_8
    const/4 v0, -0x1

    :cond_9
    return v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_9

    .line 314
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    .line 324
    :cond_9
    new-instance v0, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;

    iget-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 301
    iget-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_12

    :cond_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_12
    return-object v0
.end method

.method public open(Landroidx/media3/datasource/DataSpec;)J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 352
    iput-object p1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    const-wide/16 v0, 0x0

    .line 353
    iput-wide v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesRead:J

    .line 354
    iput-wide v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    .line 355
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/DefaultHttpDataSource;->transferInitializing(Landroidx/media3/datasource/DataSpec;)V

    const/4 v2, 0x1

    .line 360
    :try_start_c
    invoke-direct {p0, p1}, Landroidx/media3/datasource/DefaultHttpDataSource;->makeConnection(Landroidx/media3/datasource/DataSpec;)Ljava/net/HttpURLConnection;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    .line 362
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    iput v4, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->responseCode:I

    .line 363
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1c} :catch_109

    .line 371
    iget v4, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->responseCode:I

    const-string v5, "Content-Range"

    const/16 v6, 0xc8

    const-wide/16 v8, -0x1

    if-lt v4, v6, :cond_b5

    const/16 v10, 0x12b

    if-le v4, v10, :cond_2c

    goto/16 :goto_b5

    .line 402
    :cond_2c
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 403
    iget-object v7, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->contentTypePredicate:Lcom/google/common/base/Predicate;

    if-eqz v7, :cond_44

    invoke-interface {v7, v4}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    goto :goto_44

    .line 404
    :cond_3b
    invoke-direct {p0}, Landroidx/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 405
    new-instance v0, Landroidx/media3/datasource/HttpDataSource$InvalidContentTypeException;

    invoke-direct {v0, v4, p1}, Landroidx/media3/datasource/HttpDataSource$InvalidContentTypeException;-><init>(Ljava/lang/String;Landroidx/media3/datasource/DataSpec;)V

    throw v0

    .line 411
    :cond_44
    :goto_44
    iget v4, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->responseCode:I

    if-ne v4, v6, :cond_50

    iget-wide v6, p1, Landroidx/media3/datasource/DataSpec;->position:J

    cmp-long v4, v6, v0

    if-eqz v4, :cond_50

    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->position:J

    .line 414
    :cond_50
    invoke-static {v3}, Landroidx/media3/datasource/DefaultHttpDataSource;->isCompressed(Ljava/net/HttpURLConnection;)Z

    move-result v4

    if-nez v4, :cond_78

    .line 416
    iget-wide v6, p1, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_61

    .line 417
    iget-wide v5, p1, Landroidx/media3/datasource/DataSpec;->length:J

    iput-wide v5, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    goto :goto_7c

    :cond_61
    const-string v6, "Content-Length"

    .line 421
    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 422
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 420
    invoke-static {v6, v5}, Landroidx/media3/datasource/HttpUtil;->getContentLength(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v5, v8

    if-eqz v7, :cond_75

    sub-long v8, v5, v0

    .line 424
    :cond_75
    iput-wide v8, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    goto :goto_7c

    .line 430
    :cond_78
    iget-wide v5, p1, Landroidx/media3/datasource/DataSpec;->length:J

    iput-wide v5, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    :goto_7c
    const/16 v5, 0x7d0

    .line 434
    :try_start_7e
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v4, :cond_8f

    .line 436
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    iget-object v4, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_8f} :catch_ab

    .line 447
    :cond_8f
    iput-boolean v2, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->opened:Z

    .line 448
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/DefaultHttpDataSource;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    .line 451
    :try_start_94
    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/datasource/DefaultHttpDataSource;->skipFully(JLandroidx/media3/datasource/DataSpec;)V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_9a

    .line 465
    iget-wide v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    return-wide v0

    :catch_9a
    move-exception v0

    .line 453
    invoke-direct {p0}, Landroidx/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 455
    instance-of v1, v0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    if-eqz v1, :cond_a5

    .line 456
    check-cast v0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    throw v0

    .line 458
    :cond_a5
    new-instance v1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    invoke-direct {v1, v0, p1, v5, v2}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V

    throw v1

    :catch_ab
    move-exception v0

    .line 439
    invoke-direct {p0}, Landroidx/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 440
    new-instance v1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    invoke-direct {v1, v0, p1, v5, v2}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V

    throw v1

    .line 372
    :cond_b5
    :goto_b5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    .line 373
    iget v6, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->responseCode:I

    const/16 v10, 0x1a0

    if-ne v6, v10, :cond_db

    .line 375
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/media3/datasource/HttpUtil;->getDocumentSize(Ljava/lang/String;)J

    move-result-wide v5

    .line 376
    iget-wide v11, p1, Landroidx/media3/datasource/DataSpec;->position:J

    cmp-long v5, v11, v5

    if-nez v5, :cond_db

    .line 377
    iput-boolean v2, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->opened:Z

    .line 378
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/DefaultHttpDataSource;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    .line 379
    iget-wide v2, p1, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_da

    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    :cond_da
    return-wide v0

    .line 383
    :cond_db
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_e6

    .line 387
    :try_start_e1
    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    goto :goto_e8

    :cond_e6
    sget-object v0, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e8} :catch_ea

    :goto_e8
    move-object v11, v0

    goto :goto_ed

    .line 389
    :catch_ea
    sget-object v0, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    goto :goto_e8

    .line 391
    :goto_ed
    invoke-direct {p0}, Landroidx/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 394
    iget v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->responseCode:I

    if-ne v0, v10, :cond_fc

    .line 395
    new-instance v0, Landroidx/media3/datasource/DataSourceException;

    const/16 v1, 0x7d8

    invoke-direct {v0, v1}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    goto :goto_fd

    :cond_fc
    const/4 v0, 0x0

    :goto_fd
    move-object v8, v0

    .line 397
    new-instance v0, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    iget v6, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->responseCode:I

    move-object v5, v0

    move-object v9, v4

    move-object v10, p1

    invoke-direct/range {v5 .. v11}, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Landroidx/media3/datasource/DataSpec;[B)V

    throw v0

    :catch_109
    move-exception v0

    .line 365
    invoke-direct {p0}, Landroidx/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 366
    invoke-static {v0, p1, v2}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->createForIOException(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;I)Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    move-result-object p1

    throw p1
.end method

.method openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 649
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method public read([BII)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 472
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/datasource/DefaultHttpDataSource;->readInternal([BII)I

    move-result p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    :catch_5
    move-exception p1

    .line 474
    iget-object p2, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 475
    invoke-static {p2}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/datasource/DataSpec;

    const/4 p3, 0x2

    .line 474
    invoke-static {p1, p2, p3}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->createForIOException(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;I)Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    move-result-object p1

    throw p1
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 330
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->requestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
