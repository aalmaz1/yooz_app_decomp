.class public Lorg/apache/commons/lang3/text/StrTokenizer;
.super Ljava/lang/Object;
.source "StrTokenizer.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang3/text/StrTokenizer;

.field private static final TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang3/text/StrTokenizer;


# instance fields
.field private chars:[C

.field private delimMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

.field private emptyAsNull:Z

.field private ignoreEmptyTokens:Z

.field private ignoredMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

.field private quoteMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

.field private tokenPos:I

.field private tokens:[Ljava/lang/String;

.field private trimmerMatcher:Lorg/apache/commons/lang3/text/StrMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 97
    new-instance v0, Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-direct {v0}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 98
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->commaMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 99
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->doubleQuoteMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 100
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setIgnoredMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 101
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->trimMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setTrimmerMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setEmptyTokenAsNull(Z)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 103
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setIgnoreEmptyTokens(Z)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 105
    new-instance v0, Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-direct {v0}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 106
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->tabMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 107
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->doubleQuoteMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 108
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setIgnoredMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 109
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->trimMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setTrimmerMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 110
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setEmptyTokenAsNull(Z)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 111
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setIgnoreEmptyTokens(Z)Lorg/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->splitMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 124
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->quoteMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 126
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->ignoredMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 128
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->trimmerMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->emptyAsNull:Z

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->ignoreEmptyTokens:Z

    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->splitMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 124
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->quoteMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 126
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->ignoredMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 128
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->trimmerMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->emptyAsNull:Z

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->ignoreEmptyTokens:Z

    if-eqz p1, :cond_2a

    .line 258
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    goto :goto_2d

    :cond_2a
    const/4 p1, 0x0

    .line 260
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    :goto_2d
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .registers 3

    .line 271
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterChar(C)Lorg/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;CC)V
    .registers 4

    .line 306
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>(Ljava/lang/String;C)V

    .line 307
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/text/StrTokenizer;->setQuoteChar(C)Lorg/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 282
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterString(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/lang3/text/StrMatcher;)V
    .registers 3

    .line 293
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;)V
    .registers 4

    .line 319
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>(Ljava/lang/String;Lorg/apache/commons/lang3/text/StrMatcher;)V

    .line 320
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>([C)V
    .registers 3

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->splitMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 124
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->quoteMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 126
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->ignoredMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 128
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->trimmerMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->emptyAsNull:Z

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->ignoreEmptyTokens:Z

    .line 331
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    return-void
.end method

.method public constructor <init>([CC)V
    .registers 3

    .line 341
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>([C)V

    .line 342
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterChar(C)Lorg/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>([CCC)V
    .registers 4

    .line 376
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>([CC)V

    .line 377
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/text/StrTokenizer;->setQuoteChar(C)Lorg/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>([CLjava/lang/String;)V
    .registers 3

    .line 352
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>([C)V

    .line 353
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterString(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>([CLorg/apache/commons/lang3/text/StrMatcher;)V
    .registers 3

    .line 363
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>([C)V

    .line 364
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>([CLorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;)V
    .registers 4

    .line 389
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>([CLorg/apache/commons/lang3/text/StrMatcher;)V

    .line 390
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method private addToken(Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 665
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 666
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->isIgnoreEmptyTokens()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 669
    :cond_d
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->isEmptyTokenAsNull()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p2, 0x0

    .line 673
    :cond_14
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkTokenized()V
    .registers 4

    .line 605
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    if-nez v0, :cond_30

    .line 606
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    .line 608
    invoke-virtual {p0, v0, v1, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    .line 609
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    goto :goto_30

    .line 611
    :cond_1d
    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    .line 612
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    :cond_30
    :goto_30
    return-void
.end method

.method private static getCSVClone()Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 1

    .line 143
    sget-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrTokenizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/text/StrTokenizer;

    return-object v0
.end method

.method public static getCSVInstance()Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 1

    .line 156
    invoke-static {}, Lorg/apache/commons/lang3/text/StrTokenizer;->getCSVClone()Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public static getCSVInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 2

    .line 169
    invoke-static {}, Lorg/apache/commons/lang3/text/StrTokenizer;->getCSVClone()Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    .line 170
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->reset(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;

    return-object v0
.end method

.method public static getCSVInstance([C)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 2

    .line 184
    invoke-static {}, Lorg/apache/commons/lang3/text/StrTokenizer;->getCSVClone()Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    .line 185
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->reset([C)Lorg/apache/commons/lang3/text/StrTokenizer;

    return-object v0
.end method

.method private static getTSVClone()Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 1

    .line 195
    sget-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrTokenizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/text/StrTokenizer;

    return-object v0
.end method

.method public static getTSVInstance()Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 1

    .line 208
    invoke-static {}, Lorg/apache/commons/lang3/text/StrTokenizer;->getTSVClone()Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public static getTSVInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 2

    .line 219
    invoke-static {}, Lorg/apache/commons/lang3/text/StrTokenizer;->getTSVClone()Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    .line 220
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->reset(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;

    return-object v0
.end method

.method public static getTSVInstance([C)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 2

    .line 232
    invoke-static {}, Lorg/apache/commons/lang3/text/StrTokenizer;->getTSVClone()Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    .line 233
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->reset([C)Lorg/apache/commons/lang3/text/StrTokenizer;

    return-object v0
.end method

.method private isQuote([CIIII)Z
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p5, :cond_15

    add-int v2, p2, v1

    if-ge v2, p3, :cond_14

    .line 835
    aget-char v2, p1, v2

    add-int v3, p4, v1

    aget-char v3, p1, v3

    if-eq v2, v3, :cond_11

    goto :goto_14

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    :goto_14
    return v0

    :cond_15
    const/4 p1, 0x1

    return p1
.end method

.method private readNextToken([CIILorg/apache/commons/lang3/text/StrBuilder;Ljava/util/List;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII",
            "Lorg/apache/commons/lang3/text/StrBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    :goto_0
    if-ge p2, p3, :cond_2f

    .line 691
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getIgnoredMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p2, p3}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getTrimmerMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p2, p3}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v0, :cond_2f

    .line 694
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getDelimiterMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p2, p3}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v1

    if-gtz v1, :cond_2f

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getQuoteMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p2, p3}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v1

    if-lez v1, :cond_2d

    goto :goto_2f

    :cond_2d
    add-int/2addr p2, v0

    goto :goto_0

    :cond_2f
    :goto_2f
    const-string v0, ""

    if-lt p2, p3, :cond_38

    .line 704
    invoke-direct {p0, p5, v0}, Lorg/apache/commons/lang3/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    .line 709
    :cond_38
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getDelimiterMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p2, p3}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v1

    if-lez v1, :cond_47

    .line 711
    invoke-direct {p0, p5, v0}, Lorg/apache/commons/lang3/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    add-int/2addr p2, v1

    return p2

    .line 716
    :cond_47
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getQuoteMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p2, p3}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v7

    if-lez v7, :cond_5e

    add-int v2, p2, v7

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p2

    .line 718
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/lang3/text/StrTokenizer;->readWithQuotes([CIILorg/apache/commons/lang3/text/StrBuilder;Ljava/util/List;II)I

    move-result p1

    return p1

    :cond_5e
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 720
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/lang3/text/StrTokenizer;->readWithQuotes([CIILorg/apache/commons/lang3/text/StrBuilder;Ljava/util/List;II)I

    move-result p1

    return p1
.end method

.method private readWithQuotes([CIILorg/apache/commons/lang3/text/StrBuilder;Ljava/util/List;II)I
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII",
            "Lorg/apache/commons/lang3/text/StrBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)I"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p7

    .line 741
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/lang3/text/StrBuilder;->clear()Lorg/apache/commons/lang3/text/StrBuilder;

    if-lez v12, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    move v15, v0

    move v5, v8

    const/4 v4, 0x0

    :goto_19
    if-ge v5, v9, :cond_ba

    if-eqz v15, :cond_61

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move/from16 v3, p3

    move v13, v4

    move/from16 v4, p6

    move v14, v5

    move/from16 v5, p7

    .line 757
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrTokenizer;->isQuote([CIIII)Z

    move-result v0

    if-eqz v0, :cond_55

    add-int v16, v14, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    .line 758
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrTokenizer;->isQuote([CIIII)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 760
    invoke-virtual {v10, v7, v14, v12}, Lorg/apache/commons/lang3/text/StrBuilder;->append([CII)Lorg/apache/commons/lang3/text/StrBuilder;

    mul-int/lit8 v0, v12, 0x2

    add-int v5, v14, v0

    .line 762
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v4

    goto :goto_19

    :cond_50
    move v4, v13

    move/from16 v5, v16

    const/4 v15, 0x0

    goto :goto_19

    :cond_55
    add-int/lit8 v5, v14, 0x1

    .line 773
    aget-char v0, v7, v14

    invoke-virtual {v10, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 774
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v4

    goto :goto_19

    :cond_61
    move v13, v4

    move v14, v5

    .line 780
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getDelimiterMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {v0, v7, v14, v8, v9}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v0

    if-lez v0, :cond_78

    const/4 v1, 0x0

    .line 783
    invoke-virtual {v10, v1, v13}, Lorg/apache/commons/lang3/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v11, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    add-int v5, v14, v0

    return v5

    :cond_78
    if-lez v12, :cond_90

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    .line 788
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrTokenizer;->isQuote([CIIII)Z

    move-result v0

    if-eqz v0, :cond_90

    add-int v5, v14, v12

    move v4, v13

    const/4 v15, 0x1

    goto :goto_19

    .line 795
    :cond_90
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getIgnoredMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {v0, v7, v14, v8, v9}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v0

    if-lez v0, :cond_9f

    :goto_9a
    add-int v5, v14, v0

    move v4, v13

    goto/16 :goto_19

    .line 804
    :cond_9f
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getTrimmerMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {v0, v7, v14, v8, v9}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v0

    if-lez v0, :cond_ad

    .line 806
    invoke-virtual {v10, v7, v14, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append([CII)Lorg/apache/commons/lang3/text/StrBuilder;

    goto :goto_9a

    :cond_ad
    add-int/lit8 v5, v14, 0x1

    .line 812
    aget-char v0, v7, v14

    invoke-virtual {v10, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 813
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v4

    goto/16 :goto_19

    :cond_ba
    move v13, v4

    const/4 v0, 0x0

    .line 818
    invoke-virtual {v10, v0, v13}, Lorg/apache/commons/lang3/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v11, v0}, Lorg/apache/commons/lang3/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .registers 2

    .line 91
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;->add(Ljava/lang/String;)V

    return-void
.end method

.method public add(Ljava/lang/String;)V
    .registers 3

    .line 596
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "add() is unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .line 1079
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->cloneReset()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    const/4 v0, 0x0

    return-object v0
.end method

.method cloneReset()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1094
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 1095
    iget-object v1, v0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    if-eqz v1, :cond_12

    .line 1096
    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, v0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    .line 1098
    :cond_12
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrTokenizer;->reset()Lorg/apache/commons/lang3/text/StrTokenizer;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 3

    .line 1062
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 1065
    :cond_6
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public getDelimiterMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .registers 2

    .line 850
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public getIgnoredMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .registers 2

    .line 946
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->ignoredMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public getQuoteMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .registers 2

    .line 902
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->quoteMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public getTokenArray()[Ljava/lang/String;
    .registers 2

    .line 437
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->checkTokenized()V

    .line 438
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTokenList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 447
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->checkTokenized()V

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 449
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getTrimmerMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .registers 2

    .line 990
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->trimmerMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public hasNext()Z
    .registers 3

    .line 507
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->checkTokenized()V

    .line 508
    iget v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    .line 542
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->checkTokenized()V

    .line 543
    iget v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isEmptyTokenAsNull()Z
    .registers 2

    .line 1017
    iget-boolean v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->emptyAsNull:Z

    return v0
.end method

.method public isIgnoreEmptyTokens()Z
    .registers 2

    .line 1040
    iget-boolean v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->ignoreEmptyTokens:Z

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 91
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .registers 4

    .line 519
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 520
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    .line 522
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .registers 2

    .line 532
    iget v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    return v0
.end method

.method public nextToken()Ljava/lang/String;
    .registers 4

    .line 413
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 414
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .registers 2

    .line 91
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->previous()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/String;
    .registers 3

    .line 553
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 554
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    .line 556
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .registers 2

    .line 566
    iget v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public previousToken()Ljava/lang/String;
    .registers 3

    .line 425
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 426
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .line 576
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 2

    const/4 v0, 0x0

    .line 461
    iput v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    const/4 v0, 0x0

    .line 462
    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    return-object p0
.end method

.method public reset(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 2

    .line 475
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->reset()Lorg/apache/commons/lang3/text/StrTokenizer;

    if-eqz p1, :cond_c

    .line 477
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    goto :goto_f

    :cond_c
    const/4 p1, 0x0

    .line 479
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    :goto_f
    return-object p0
.end method

.method public reset([C)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 2

    .line 493
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->reset()Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 494
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2

    .line 91
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .registers 3

    .line 586
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "set() is unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDelimiterChar(C)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 2

    .line 877
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object p1

    return-object p1
.end method

.method public setDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 2

    if-nez p1, :cond_9

    .line 863
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    goto :goto_b

    .line 865
    :cond_9
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    :goto_b
    return-object p0
.end method

.method public setDelimiterString(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 2

    .line 887
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object p1

    return-object p1
.end method

.method public setEmptyTokenAsNull(Z)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 2

    .line 1028
    iput-boolean p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->emptyAsNull:Z

    return-object p0
.end method

.method public setIgnoreEmptyTokens(Z)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 2

    .line 1051
    iput-boolean p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->ignoreEmptyTokens:Z

    return-object p0
.end method

.method public setIgnoredChar(C)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 2

    .line 975
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setIgnoredMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object p1

    return-object p1
.end method

.method public setIgnoredMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 2

    if-eqz p1, :cond_4

    .line 960
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->ignoredMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    :cond_4
    return-object p0
.end method

.method public setQuoteChar(C)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 2

    .line 931
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object p1

    return-object p1
.end method

.method public setQuoteMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 2

    if-eqz p1, :cond_4

    .line 916
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->quoteMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    :cond_4
    return-object p0
.end method

.method public setTrimmerMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 2

    if-eqz p1, :cond_4

    .line 1004
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->trimmerMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    :cond_4
    return-object p0
.end method

.method public size()I
    .registers 2

    .line 401
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->checkTokenized()V

    .line 402
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1110
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "StrTokenizer[not tokenized yet]"

    return-object v0

    .line 1113
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StrTokenizer"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getTokenList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected tokenize([CII)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_26

    if-nez p3, :cond_5

    goto :goto_26

    .line 641
    :cond_5
    new-instance v6, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v6}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>()V

    .line 642
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v2, p2

    :cond_10
    :goto_10
    if-ltz v2, :cond_25

    if-ge v2, p3, :cond_25

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, v6

    move-object v5, v7

    .line 648
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrTokenizer;->readNextToken([CIILorg/apache/commons/lang3/text/StrBuilder;Ljava/util/List;)I

    move-result v2

    if-lt v2, p3, :cond_10

    const-string p2, ""

    .line 652
    invoke-direct {p0, v7, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_10

    :cond_25
    return-object v7

    .line 639
    :cond_26
    :goto_26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
