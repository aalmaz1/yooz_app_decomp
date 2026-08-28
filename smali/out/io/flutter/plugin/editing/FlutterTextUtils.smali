.class Lio/flutter/plugin/editing/FlutterTextUtils;
.super Ljava/lang/Object;
.source "FlutterTextUtils.java"


# static fields
.field public static final CANCEL_TAG:I = 0xe007f

.field public static final CARRIAGE_RETURN:I = 0xd

.field public static final COMBINING_ENCLOSING_KEYCAP:I = 0x20e3

.field public static final LINE_FEED:I = 0xa

.field public static final ZERO_WIDTH_JOINER:I = 0x200d


# instance fields
.field private final flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lio/flutter/plugin/editing/FlutterTextUtils;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    return-void
.end method


# virtual methods
.method public getOffsetAfter(Ljava/lang/CharSequence;I)I
    .registers 12

    .line 198
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-lt p2, v1, :cond_9

    return v0

    .line 204
    :cond_9
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 205
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int v4, p2, v3

    const/4 v5, 0x0

    if-nez v4, :cond_17

    return v5

    :cond_17
    const/16 v6, 0xa

    if-ne v2, v6, :cond_27

    .line 214
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_25

    add-int/lit8 v3, v3, 0x1

    :cond_25
    add-int/2addr p2, v3

    return p2

    .line 222
    :cond_27
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isRegionalIndicatorSymbol(I)Z

    move-result v6

    if-eqz v6, :cond_5c

    if-ge v4, v1, :cond_5b

    .line 224
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lio/flutter/plugin/editing/FlutterTextUtils;->isRegionalIndicatorSymbol(I)Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_5b

    :cond_3a
    move v0, p2

    :goto_3b
    if-lez v0, :cond_53

    .line 234
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lio/flutter/plugin/editing/FlutterTextUtils;->isRegionalIndicatorSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 235
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 238
    :cond_53
    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_59

    add-int/lit8 v3, v3, 0x2

    :cond_59
    add-int/2addr p2, v3

    return p2

    :cond_5b
    :goto_5b
    return v4

    .line 245
    :cond_5c
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isKeycapBase(I)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 246
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v3, v1

    :cond_67
    const/16 v1, 0x20e3

    if-ne v2, v1, :cond_9e

    .line 249
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 250
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v4, v2

    if-ge v4, v0, :cond_91

    .line 251
    invoke-virtual {p0, v1}, Lio/flutter/plugin/editing/FlutterTextUtils;->isVariationSelector(I)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 252
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p1

    .line 253
    invoke-virtual {p0, p1}, Lio/flutter/plugin/editing/FlutterTextUtils;->isKeycapBase(I)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 254
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    add-int/2addr v0, p1

    add-int/2addr v3, v0

    goto :goto_9c

    .line 256
    :cond_91
    invoke-virtual {p0, v1}, Lio/flutter/plugin/editing/FlutterTextUtils;->isKeycapBase(I)Z

    move-result p1

    if-eqz p1, :cond_9c

    .line 257
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    add-int/2addr v3, p1

    :cond_9c
    :goto_9c
    add-int/2addr p2, v3

    return p2

    .line 262
    :cond_9e
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isEmoji(I)Z

    move-result v6

    if-eqz v6, :cond_144

    move v6, v5

    move v7, v6

    :cond_a6
    const/4 v8, 0x1

    if-eqz v6, :cond_b1

    .line 267
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v6, v7

    add-int/2addr v6, v8

    add-int/2addr v3, v6

    move v6, v5

    .line 271
    :cond_b1
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isEmojiModifier(I)Z

    move-result v7

    if-eqz v7, :cond_b9

    goto/16 :goto_144

    :cond_b9
    if-ge v4, v0, :cond_138

    .line 276
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 277
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v4, v7

    if-ne v2, v1, :cond_f9

    .line 279
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 280
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v4, v2

    if-ge v4, v0, :cond_ec

    .line 281
    invoke-virtual {p0, v1}, Lio/flutter/plugin/editing/FlutterTextUtils;->isVariationSelector(I)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 282
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p1

    .line 283
    invoke-virtual {p0, p1}, Lio/flutter/plugin/editing/FlutterTextUtils;->isKeycapBase(I)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 284
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    add-int/2addr v0, p1

    add-int/2addr v3, v0

    goto :goto_f7

    .line 286
    :cond_ec
    invoke-virtual {p0, v1}, Lio/flutter/plugin/editing/FlutterTextUtils;->isKeycapBase(I)Z

    move-result p1

    if-eqz p1, :cond_f7

    .line 287
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    add-int/2addr v3, p1

    :cond_f7
    :goto_f7
    add-int/2addr p2, v3

    return p2

    .line 291
    :cond_f9
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isEmojiModifier(I)Z

    move-result v7

    if-eqz v7, :cond_106

    .line 292
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    :goto_103
    add-int/2addr p1, v5

    add-int/2addr v3, p1

    goto :goto_144

    .line 295
    :cond_106
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isVariationSelector(I)Z

    move-result v7

    if-eqz v7, :cond_111

    .line 296
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    goto :goto_103

    :cond_111
    const/16 v7, 0x200d

    if-ne v2, v7, :cond_138

    .line 301
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 302
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v4, v6

    if-ge v4, v0, :cond_135

    .line 303
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isVariationSelector(I)Z

    move-result v6

    if-eqz v6, :cond_135

    .line 304
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 305
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    .line 306
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v4, v7

    move v7, v6

    goto :goto_136

    :cond_135
    move v7, v5

    :goto_136
    move v6, v8

    goto :goto_139

    :cond_138
    move v7, v5

    :goto_139
    if-lt v4, v0, :cond_13c

    goto :goto_144

    :cond_13c
    if-eqz v6, :cond_144

    .line 314
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isEmoji(I)Z

    move-result v8

    if-nez v8, :cond_a6

    :cond_144
    :goto_144
    add-int/2addr p2, v3

    return p2
.end method

.method public getOffsetBefore(Ljava/lang/CharSequence;I)I
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p2, v1, :cond_5

    return v0

    .line 62
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 63
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    sub-int v4, p2, v3

    if-nez v4, :cond_12

    return v0

    :cond_12
    const/16 v5, 0xa

    if-ne v2, v5, :cond_22

    .line 72
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result p1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_20

    add-int/lit8 v3, v3, 0x1

    :cond_20
    sub-int/2addr p2, v3

    return p2

    .line 80
    :cond_22
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isRegionalIndicatorSymbol(I)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 81
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 82
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v4, v2

    :goto_31
    if-lez v4, :cond_45

    .line 84
    invoke-virtual {p0, v0}, Lio/flutter/plugin/editing/FlutterTextUtils;->isRegionalIndicatorSymbol(I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 85
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 86
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 89
    :cond_45
    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4b

    add-int/lit8 v3, v3, 0x2

    :cond_4b
    sub-int/2addr p2, v3

    return p2

    :cond_4d
    const/16 v5, 0x20e3

    if-ne v2, v5, :cond_84

    .line 97
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 98
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int/2addr v4, v1

    if-lez v4, :cond_77

    .line 99
    invoke-virtual {p0, v0}, Lio/flutter/plugin/editing/FlutterTextUtils;->isVariationSelector(I)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 100
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result p1

    .line 101
    invoke-virtual {p0, p1}, Lio/flutter/plugin/editing/FlutterTextUtils;->isKeycapBase(I)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 102
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    add-int/2addr v0, p1

    add-int/2addr v3, v0

    goto :goto_82

    .line 104
    :cond_77
    invoke-virtual {p0, v0}, Lio/flutter/plugin/editing/FlutterTextUtils;->isKeycapBase(I)Z

    move-result p1

    if-eqz p1, :cond_82

    .line 105
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    add-int/2addr v3, p1

    :cond_82
    :goto_82
    sub-int/2addr p2, v3

    return p2

    :cond_84
    const v5, 0xe007f

    if-ne v2, v5, :cond_b6

    .line 117
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 118
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    :goto_91
    sub-int/2addr v4, v5

    if-lez v4, :cond_a8

    .line 119
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isTagSpecChar(I)Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 120
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v3, v2

    .line 121
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 122
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    goto :goto_91

    .line 124
    :cond_a8
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isEmoji(I)Z

    move-result v5

    if-nez v5, :cond_b1

    add-int/lit8 p2, p2, -0x2

    return p2

    .line 127
    :cond_b1
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 130
    :cond_b6
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isVariationSelector(I)Z

    move-result v5

    if-eqz v5, :cond_ce

    .line 131
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 132
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isEmoji(I)Z

    move-result v5

    if-nez v5, :cond_c8

    sub-int/2addr p2, v3

    return p2

    .line 135
    :cond_c8
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    sub-int/2addr v4, v3

    .line 140
    :cond_ce
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isEmoji(I)Z

    move-result v5

    if-eqz v5, :cond_155

    move v5, v0

    move v6, v5

    :cond_d6
    if-eqz v5, :cond_e0

    .line 145
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    add-int/2addr v3, v5

    move v5, v0

    .line 149
    :cond_e0
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isEmojiModifier(I)Z

    move-result v6

    if-eqz v6, :cond_117

    .line 150
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 151
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v4, v2

    if-lez v4, :cond_10a

    .line 152
    invoke-virtual {p0, v1}, Lio/flutter/plugin/editing/FlutterTextUtils;->isVariationSelector(I)Z

    move-result v2

    if-eqz v2, :cond_10a

    .line 153
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 154
    invoke-virtual {p0, v1}, Lio/flutter/plugin/editing/FlutterTextUtils;->isEmoji(I)Z

    move-result p1

    if-nez p1, :cond_103

    sub-int/2addr p2, v3

    return p2

    .line 157
    :cond_103
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    .line 158
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    .line 160
    :cond_10a
    invoke-virtual {p0, v1}, Lio/flutter/plugin/editing/FlutterTextUtils;->isEmojiModifierBase(I)Z

    move-result p1

    if-eqz p1, :cond_155

    .line 161
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    add-int/2addr v0, p1

    add-int/2addr v3, v0

    goto :goto_155

    :cond_117
    if-lez v4, :cond_149

    .line 167
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 168
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    sub-int/2addr v4, v6

    const/16 v6, 0x200d

    if-ne v2, v6, :cond_149

    .line 171
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 172
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    sub-int/2addr v4, v5

    if-lez v4, :cond_146

    .line 173
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isVariationSelector(I)Z

    move-result v5

    if-eqz v5, :cond_146

    .line 174
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 175
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    .line 176
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    sub-int/2addr v4, v6

    move v6, v5

    goto :goto_147

    :cond_146
    move v6, v0

    :goto_147
    move v5, v1

    goto :goto_14a

    :cond_149
    move v6, v0

    :goto_14a
    if-nez v4, :cond_14d

    goto :goto_155

    :cond_14d
    if-eqz v5, :cond_155

    .line 184
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isEmoji(I)Z

    move-result v7

    if-nez v7, :cond_d6

    :cond_155
    :goto_155
    sub-int/2addr p2, v3

    return p2
.end method

.method public isEmoji(I)Z
    .registers 3

    .line 22
    iget-object v0, p0, Lio/flutter/plugin/editing/FlutterTextUtils;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->isCodePointEmoji(I)Z

    move-result p1

    return p1
.end method

.method public isEmojiModifier(I)Z
    .registers 3

    .line 26
    iget-object v0, p0, Lio/flutter/plugin/editing/FlutterTextUtils;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->isCodePointEmojiModifier(I)Z

    move-result p1

    return p1
.end method

.method public isEmojiModifierBase(I)Z
    .registers 3

    .line 30
    iget-object v0, p0, Lio/flutter/plugin/editing/FlutterTextUtils;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->isCodePointEmojiModifierBase(I)Z

    move-result p1

    return p1
.end method

.method public isKeycapBase(I)Z
    .registers 3

    const/16 v0, 0x30

    if-gt v0, p1, :cond_8

    const/16 v0, 0x39

    if-le p1, v0, :cond_13

    :cond_8
    const/16 v0, 0x23

    if-eq p1, v0, :cond_13

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method public isRegionalIndicatorSymbol(I)Z
    .registers 3

    .line 38
    iget-object v0, p0, Lio/flutter/plugin/editing/FlutterTextUtils;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->isCodePointRegionalIndicator(I)Z

    move-result p1

    return p1
.end method

.method public isTagSpecChar(I)Z
    .registers 3

    const v0, 0xe0020

    if-gt v0, p1, :cond_c

    const v0, 0xe007e

    if-gt p1, v0, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public isVariationSelector(I)Z
    .registers 3

    .line 34
    iget-object v0, p0, Lio/flutter/plugin/editing/FlutterTextUtils;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->isCodePointVariantSelector(I)Z

    move-result p1

    return p1
.end method
