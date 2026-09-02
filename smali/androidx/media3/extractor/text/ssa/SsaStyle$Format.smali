.class final Landroidx/media3/extractor/text/ssa/SsaStyle$Format;
.super Ljava/lang/Object;
.source "SsaStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/text/ssa/SsaStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Format"
.end annotation


# instance fields
.field public final alignmentIndex:I

.field public final boldIndex:I

.field public final borderStyleIndex:I

.field public final fontSizeIndex:I

.field public final italicIndex:I

.field public final length:I

.field public final nameIndex:I

.field public final outlineColorIndex:I

.field public final primaryColorIndex:I

.field public final strikeoutIndex:I

.field public final underlineIndex:I


# direct methods
.method private constructor <init>(IIIIIIIIIII)V
    .registers 12

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput p1, p0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->nameIndex:I

    .line 344
    iput p2, p0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->alignmentIndex:I

    .line 345
    iput p3, p0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->primaryColorIndex:I

    .line 346
    iput p4, p0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->outlineColorIndex:I

    .line 347
    iput p5, p0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->fontSizeIndex:I

    .line 348
    iput p6, p0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->boldIndex:I

    .line 349
    iput p7, p0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->italicIndex:I

    .line 350
    iput p8, p0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->underlineIndex:I

    .line 351
    iput p9, p0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->strikeoutIndex:I

    .line 352
    iput p10, p0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->borderStyleIndex:I

    .line 353
    iput p11, p0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->length:I

    return-void
.end method

.method public static fromFormatLine(Ljava/lang/String;)Landroidx/media3/extractor/text/ssa/SsaStyle$Format;
    .registers 18

    const/4 v0, 0x7

    move-object/from16 v1, p0

    .line 374
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v6, v2

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    move v4, v3

    .line 375
    :goto_1a
    array-length v5, v1

    if-ge v4, v5, :cond_c2

    .line 376
    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_d0

    :goto_31
    move v0, v2

    goto/16 :goto_a6

    :sswitch_34
    const-string v0, "outlinecolour"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_31

    :cond_3d
    const/16 v0, 0x9

    goto/16 :goto_a6

    :sswitch_41
    const-string v0, "alignment"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto :goto_31

    :cond_4a
    const/16 v0, 0x8

    goto/16 :goto_a6

    :sswitch_4e
    const-string v0, "borderstyle"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto :goto_31

    :cond_57
    const/4 v0, 0x7

    goto :goto_a6

    :sswitch_59
    const-string v0, "fontsize"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto :goto_31

    :cond_62
    const/4 v0, 0x6

    goto :goto_a6

    :sswitch_64
    const-string v0, "name"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    goto :goto_31

    :cond_6d
    const/4 v0, 0x5

    goto :goto_a6

    :sswitch_6f
    const-string v0, "bold"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    goto :goto_31

    :cond_78
    const/4 v0, 0x4

    goto :goto_a6

    :sswitch_7a
    const-string v0, "primarycolour"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    goto :goto_31

    :cond_83
    const/4 v0, 0x3

    goto :goto_a6

    :sswitch_85
    const-string v0, "strikeout"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8e

    goto :goto_31

    :cond_8e
    const/4 v0, 0x2

    goto :goto_a6

    :sswitch_90
    const-string/jumbo v0, "underline"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    goto :goto_31

    :cond_9a
    const/4 v0, 0x1

    goto :goto_a6

    :sswitch_9c
    const-string v0, "italic"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    goto :goto_31

    :cond_a5
    move v0, v3

    :goto_a6
    packed-switch v0, :pswitch_data_fa

    goto :goto_bd

    :pswitch_aa
    move v9, v4

    goto :goto_bd

    :pswitch_ac
    move v7, v4

    goto :goto_bd

    :pswitch_ae
    move v15, v4

    goto :goto_bd

    :pswitch_b0
    move v10, v4

    goto :goto_bd

    :pswitch_b2
    move v6, v4

    goto :goto_bd

    :pswitch_b4
    move v11, v4

    goto :goto_bd

    :pswitch_b6
    move v8, v4

    goto :goto_bd

    :pswitch_b8
    move v14, v4

    goto :goto_bd

    :pswitch_ba
    move v13, v4

    goto :goto_bd

    :pswitch_bc
    move v12, v4

    :goto_bd
    add-int/lit8 v4, v4, 0x1

    const/4 v0, 0x7

    goto/16 :goto_1a

    :cond_c2
    if-eq v6, v2, :cond_ce

    .line 410
    new-instance v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;

    array-length v1, v1

    move-object v5, v0

    move/from16 v16, v1

    invoke-direct/range {v5 .. v16}, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;-><init>(IIIIIIIIIII)V

    goto :goto_cf

    :cond_ce
    const/4 v0, 0x0

    :goto_cf
    return-object v0

    :sswitch_data_d0
    .sparse-switch
        -0x4642c5d0 -> :sswitch_9c
        -0x3d363934 -> :sswitch_90
        -0xb7325a4 -> :sswitch_85
        -0x43a3db2 -> :sswitch_7a
        0x2e3a85 -> :sswitch_6f
        0x337a8b -> :sswitch_64
        0x15d92cd0 -> :sswitch_59
        0x2dbc6505 -> :sswitch_4e
        0x695fa1e3 -> :sswitch_41
        0x76840c8e -> :sswitch_34
    .end sparse-switch

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_bc
        :pswitch_ba
        :pswitch_b8
        :pswitch_b6
        :pswitch_b4
        :pswitch_b2
        :pswitch_b0
        :pswitch_ae
        :pswitch_ac
        :pswitch_aa
    .end packed-switch
.end method
