.class final Landroidx/media3/exoplayer/dash/DashMediaSource$Iso8601Parser;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Iso8601Parser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final TIMESTAMP_WITH_TIMEZONE_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "(.+?)(Z|((\\+|-|\u2212)(\\d\\d)(:?(\\d\\d))?))"

    .line 1458
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Iso8601Parser;->TIMESTAMP_WITH_TIMEZONE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Long;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "Couldn\'t parse timestamp: "

    .line 1462
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p2, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1463
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 1465
    :try_start_13
    sget-object v1, Landroidx/media3/exoplayer/dash/DashMediaSource$Iso8601Parser;->TIMESTAMP_WITH_TIMEZONE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1466
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_89

    const/4 p1, 0x1

    .line 1471
    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 1472
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p2, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v2, "UTC"

    .line 1473
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1474
    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    const/4 v2, 0x2

    .line 1476
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Z"

    .line 1477
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    goto :goto_84

    :cond_4d
    const-string v2, "+"

    const/4 v3, 0x4

    .line 1480
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    const-wide/16 v2, 0x1

    goto :goto_5f

    :cond_5d
    const-wide/16 v2, -0x1

    :goto_5f
    const/4 v4, 0x5

    .line 1481
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x7

    .line 1482
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 1483
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_76

    const-wide/16 v6, 0x0

    goto :goto_7a

    :cond_76
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    :goto_7a
    const-wide/16 v8, 0x3c

    mul-long/2addr v4, v8

    add-long/2addr v4, v6

    mul-long/2addr v4, v8

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    mul-long/2addr v2, v4

    sub-long/2addr p1, v2

    .line 1487
    :goto_84
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1467
    :cond_89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1
    :try_end_9b
    .catch Ljava/text/ParseException; {:try_start_13 .. :try_end_9b} :catch_9b

    :catch_9b
    move-exception p1

    .line 1489
    invoke-static {v0, p1}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1455
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/dash/DashMediaSource$Iso8601Parser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
