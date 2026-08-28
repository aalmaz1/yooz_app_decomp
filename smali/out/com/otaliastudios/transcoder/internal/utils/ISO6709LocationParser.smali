.class public Lcom/otaliastudios/transcoder/internal/utils/ISO6709LocationParser;
.super Ljava/lang/Object;
.source "ISO6709LocationParser.java"


# instance fields
.field private final pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "([+\\-][0-9.]+)([+\\-][0-9.]+)"

    .line 12
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/transcoder/internal/utils/ISO6709LocationParser;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)[F
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 27
    :cond_4
    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/utils/ISO6709LocationParser;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_30

    const/4 v1, 0x1

    .line 29
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 32
    :try_start_20
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 33
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    new-array v2, v2, [F

    const/4 v4, 0x0

    aput v3, v2, v4

    aput p1, v2, v1
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_2f} :catch_30

    return-object v2

    :catch_30
    :cond_30
    return-object v0
.end method
