.class public final Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;
.super Ljava/lang/Object;
.source "UrlTemplate.java"


# static fields
.field private static final BANDWIDTH:Ljava/lang/String; = "Bandwidth"

.field private static final BANDWIDTH_ID:I = 0x3

.field private static final DEFAULT_FORMAT_TAG:Ljava/lang/String; = "%01d"

.field private static final ESCAPED_DOLLAR:Ljava/lang/String; = "$$"

.field private static final NUMBER:Ljava/lang/String; = "Number"

.field private static final NUMBER_ID:I = 0x2

.field private static final REPRESENTATION:Ljava/lang/String; = "RepresentationID"

.field private static final REPRESENTATION_ID:I = 0x1

.field private static final TIME:Ljava/lang/String; = "Time"

.field private static final TIME_ID:I = 0x4


# instance fields
.field private final identifierFormatTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final identifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final urlPieces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;->urlPieces:Ljava/util/List;

    .line 67
    iput-object p2, p0, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;->identifiers:Ljava/util/List;

    .line 68
    iput-object p3, p0, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;->identifierFormatTags:Ljava/util/List;

    return-void
.end method

.method public static compile(Ljava/lang/String;)Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;
    .registers 4

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-static {p0, v0, v1, v2}, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;->parseTemplate(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 60
    new-instance p0, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method private static parseTemplate(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    .line 120
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    move v2, v1

    .line 122
    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_162

    const-string v3, "$"

    .line 123
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_41

    .line 126
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-interface {p1, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_7

    :cond_41
    if-eq v4, v2, :cond_6b

    .line 131
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-interface {p1, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v2, v4

    goto :goto_7

    :cond_6b
    const-string v4, "$$"

    .line 134
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_99

    .line 135
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_7

    .line 138
    :cond_99
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    .line 139
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 140
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "RepresentationID"

    .line 141
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_b8

    .line 142
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15a

    :cond_b8
    const-string v4, "%0"

    .line 144
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_f3

    .line 147
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "d"

    .line 151
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_ee

    const-string/jumbo v9, "x"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_ee

    const-string v9, "X"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_ee

    .line 152
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 154
    :cond_ee
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_f5

    :cond_f3
    const-string v7, "%01d"

    .line 156
    :goto_f5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v8, 0x2

    sparse-switch v4, :sswitch_data_164

    goto :goto_121

    :sswitch_101
    const-string v4, "Bandwidth"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10a

    goto :goto_121

    :cond_10a
    move v5, v8

    goto :goto_121

    :sswitch_10c
    const-string v4, "Time"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_115

    goto :goto_121

    :cond_115
    move v5, v6

    goto :goto_121

    :sswitch_117
    const-string v4, "Number"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_120

    goto :goto_121

    :cond_120
    move v5, v1

    :goto_121
    packed-switch v5, :pswitch_data_172

    .line 167
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid template: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_139
    const/4 v2, 0x3

    .line 161
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_152

    :pswitch_142
    const/4 v2, 0x4

    .line 164
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_152

    .line 158
    :pswitch_14b
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :goto_152
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-interface {p3, v2, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 171
    :goto_15a
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v2, v3

    goto/16 :goto_7

    :cond_162
    return-void

    nop

    :sswitch_data_164
    .sparse-switch
        -0x74423897 -> :sswitch_117
        0x27c6ed -> :sswitch_10c
        0x246e091 -> :sswitch_101
    .end sparse-switch

    :pswitch_data_172
    .packed-switch 0x0
        :pswitch_14b
        :pswitch_142
        :pswitch_139
    .end packed-switch
.end method


# virtual methods
.method public buildUri(Ljava/lang/String;JIJ)Ljava/lang/String;
    .registers 14

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 84
    :goto_7
    iget-object v3, p0, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;->identifiers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_ac

    .line 85
    iget-object v3, p0, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;->urlPieces:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v3, p0, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;->identifiers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2e

    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a8

    .line 88
    :cond_2e
    iget-object v3, p0, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;->identifiers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_57

    .line 89
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v5, p0, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;->identifierFormatTags:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a8

    .line 90
    :cond_57
    iget-object v3, p0, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;->identifiers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_80

    .line 91
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v5, p0, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;->identifierFormatTags:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a8

    .line 92
    :cond_80
    iget-object v3, p0, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;->identifiers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_a8

    .line 93
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v5, p0, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;->identifierFormatTags:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a8
    :goto_a8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 96
    :cond_ac
    iget-object p1, p0, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;->urlPieces:Ljava/util/List;

    iget-object p2, p0, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;->identifiers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
