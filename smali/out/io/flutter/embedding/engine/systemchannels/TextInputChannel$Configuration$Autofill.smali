.class public Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;
.super Ljava/lang/Object;
.source "TextInputChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Autofill"
.end annotation


# instance fields
.field public final editState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

.field public final hintText:Ljava/lang/String;

.field public final hints:[Ljava/lang/String;

.field public final uniqueIdentifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;)V
    .registers 5

    .line 632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    .line 634
    iput-object p2, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->hints:[Ljava/lang/String;

    .line 635
    iput-object p3, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->hintText:Ljava/lang/String;

    .line 636
    iput-object p4, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->editState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    const-string v0, "uniqueIdentifier"

    .line 527
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hints"

    .line 528
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "hintText"

    .line 529
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v2, 0x0

    goto :goto_1a

    :cond_16
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1a
    const-string v3, "editingValue"

    .line 530
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 531
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 533
    :goto_27
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3a

    .line 534
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->translateAutofillHint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 536
    :cond_3a
    new-instance v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    .line 537
    invoke-static {p0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->fromJson(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    move-result-object p0

    invoke-direct {v1, v0, v3, v2, p0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;)V

    return-object v1
.end method

.method private static translateAutofillHint(Ljava/lang/String;)Ljava/lang/String;
    .registers 16

    .line 550
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "postalCode"

    const-string v2, "postalAddress"

    const-string v3, "password"

    const-string v4, "newUsername"

    const-string v5, "username"

    const-string v6, "creditCardExpirationYear"

    const-string v7, "creditCardExpirationDate"

    const-string v8, "creditCardNumber"

    const-string v9, "gender"

    const-string v10, "creditCardExpirationDay"

    const-string v11, "creditCardSecurityCode"

    const-string v12, "newPassword"

    const-string v13, "creditCardExpirationMonth"

    const/4 v14, -0x1

    sparse-switch v0, :sswitch_data_240

    goto/16 :goto_1ea

    :sswitch_27
    const-string v0, "birthdayDay"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_1ea

    :cond_31
    const/16 v14, 0x23

    goto/16 :goto_1ea

    :sswitch_35
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto/16 :goto_1ea

    :cond_3d
    const/16 v14, 0x22

    goto/16 :goto_1ea

    :sswitch_41
    const-string v0, "postalAddressExtended"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto/16 :goto_1ea

    :cond_4b
    const/16 v14, 0x21

    goto/16 :goto_1ea

    :sswitch_4f
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto/16 :goto_1ea

    :cond_57
    const/16 v14, 0x20

    goto/16 :goto_1ea

    :sswitch_5b
    const-string v0, "givenName"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto/16 :goto_1ea

    :cond_65
    const/16 v14, 0x1f

    goto/16 :goto_1ea

    :sswitch_69
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    goto/16 :goto_1ea

    :cond_71
    const/16 v14, 0x1e

    goto/16 :goto_1ea

    :sswitch_75
    const-string v0, "birthday"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    goto/16 :goto_1ea

    :cond_7f
    const/16 v14, 0x1d

    goto/16 :goto_1ea

    :sswitch_83
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto/16 :goto_1ea

    :cond_8b
    const/16 v14, 0x1c

    goto/16 :goto_1ea

    :sswitch_8f
    const-string v0, "telephoneNumber"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    goto/16 :goto_1ea

    :cond_99
    const/16 v14, 0x1b

    goto/16 :goto_1ea

    :sswitch_9d
    const-string v0, "familyName"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a7

    goto/16 :goto_1ea

    :cond_a7
    const/16 v14, 0x1a

    goto/16 :goto_1ea

    :sswitch_ab
    const-string v0, "birthdayMonth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b5

    goto/16 :goto_1ea

    :cond_b5
    const/16 v14, 0x19

    goto/16 :goto_1ea

    :sswitch_b9
    const-string v0, "addressState"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    goto/16 :goto_1ea

    :cond_c3
    const/16 v14, 0x18

    goto/16 :goto_1ea

    :sswitch_c7
    const-string v0, "email"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d1

    goto/16 :goto_1ea

    :cond_d1
    const/16 v14, 0x17

    goto/16 :goto_1ea

    :sswitch_d5
    const-string v0, "name"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_df

    goto/16 :goto_1ea

    :cond_df
    const/16 v14, 0x16

    goto/16 :goto_1ea

    :sswitch_e3
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_eb

    goto/16 :goto_1ea

    :cond_eb
    const/16 v14, 0x15

    goto/16 :goto_1ea

    :sswitch_ef
    const-string v0, "telephoneNumberCountryCode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f9

    goto/16 :goto_1ea

    :cond_f9
    const/16 v14, 0x14

    goto/16 :goto_1ea

    :sswitch_fd
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_105

    goto/16 :goto_1ea

    :cond_105
    const/16 v14, 0x13

    goto/16 :goto_1ea

    :sswitch_109
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_111

    goto/16 :goto_1ea

    :cond_111
    const/16 v14, 0x12

    goto/16 :goto_1ea

    :sswitch_115
    const-string v0, "nameSuffix"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11f

    goto/16 :goto_1ea

    :cond_11f
    const/16 v14, 0x11

    goto/16 :goto_1ea

    :sswitch_123
    const-string v0, "middleName"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12d

    goto/16 :goto_1ea

    :cond_12d
    const/16 v14, 0x10

    goto/16 :goto_1ea

    :sswitch_131
    const-string v0, "namePrefix"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13b

    goto/16 :goto_1ea

    :cond_13b
    const/16 v14, 0xf

    goto/16 :goto_1ea

    :sswitch_13f
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_147

    goto/16 :goto_1ea

    :cond_147
    const/16 v14, 0xe

    goto/16 :goto_1ea

    :sswitch_14b
    const-string v0, "postalAddressExtendedPostalCode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_155

    goto/16 :goto_1ea

    :cond_155
    const/16 v14, 0xd

    goto/16 :goto_1ea

    :sswitch_159
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_161

    goto/16 :goto_1ea

    :cond_161
    const/16 v14, 0xc

    goto/16 :goto_1ea

    :sswitch_165
    const-string v0, "addressCity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16f

    goto/16 :goto_1ea

    :cond_16f
    const/16 v14, 0xb

    goto/16 :goto_1ea

    :sswitch_173
    const-string v0, "middleInitial"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17d

    goto/16 :goto_1ea

    :cond_17d
    const/16 v14, 0xa

    goto/16 :goto_1ea

    :sswitch_181
    const-string v0, "countryName"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18b

    goto/16 :goto_1ea

    :cond_18b
    const/16 v14, 0x9

    goto/16 :goto_1ea

    :sswitch_18f
    const-string v0, "telephoneNumberDevice"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_198

    goto :goto_1ea

    :cond_198
    const/16 v14, 0x8

    goto :goto_1ea

    :sswitch_19b
    const-string v0, "fullStreetAddress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a4

    goto :goto_1ea

    :cond_1a4
    const/4 v14, 0x7

    goto :goto_1ea

    :sswitch_1a6
    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ad

    goto :goto_1ea

    :cond_1ad
    const/4 v14, 0x6

    goto :goto_1ea

    :sswitch_1af
    invoke-virtual {p0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b6

    goto :goto_1ea

    :cond_1b6
    const/4 v14, 0x5

    goto :goto_1ea

    :sswitch_1b8
    invoke-virtual {p0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bf

    goto :goto_1ea

    :cond_1bf
    const/4 v14, 0x4

    goto :goto_1ea

    :sswitch_1c1
    const-string v0, "telephoneNumberNational"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ca

    goto :goto_1ea

    :cond_1ca
    const/4 v14, 0x3

    goto :goto_1ea

    :sswitch_1cc
    invoke-virtual {p0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d3

    goto :goto_1ea

    :cond_1d3
    const/4 v14, 0x2

    goto :goto_1ea

    :sswitch_1d5
    const-string v0, "oneTimeCode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1de

    goto :goto_1ea

    :cond_1de
    const/4 v14, 0x1

    goto :goto_1ea

    :sswitch_1e0
    const-string v0, "birthdayYear"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e9

    goto :goto_1ea

    :cond_1e9
    const/4 v14, 0x0

    :goto_1ea
    packed-switch v14, :pswitch_data_2d2

    return-object p0

    :pswitch_1ee
    const-string p0, "birthDateDay"

    return-object p0

    :pswitch_1f1
    return-object v1

    :pswitch_1f2
    const-string p0, "extendedAddress"

    return-object p0

    :pswitch_1f5
    return-object v2

    :pswitch_1f6
    const-string p0, "personGivenName"

    return-object p0

    :pswitch_1f9
    return-object v3

    :pswitch_1fa
    const-string p0, "birthDateFull"

    return-object p0

    :pswitch_1fd
    return-object v4

    :pswitch_1fe
    const-string p0, "phoneNumber"

    return-object p0

    :pswitch_201
    const-string p0, "personFamilyName"

    return-object p0

    :pswitch_204
    const-string p0, "birthDateMonth"

    return-object p0

    :pswitch_207
    const-string p0, "addressRegion"

    return-object p0

    :pswitch_20a
    const-string p0, "emailAddress"

    return-object p0

    :pswitch_20d
    const-string p0, "personName"

    return-object p0

    :pswitch_210
    return-object v5

    :pswitch_211
    const-string p0, "phoneCountryCode"

    return-object p0

    :pswitch_214
    return-object v6

    :pswitch_215
    return-object v7

    :pswitch_216
    const-string p0, "personNameSuffix"

    return-object p0

    :pswitch_219
    const-string p0, "personMiddleName"

    return-object p0

    :pswitch_21c
    const-string p0, "personNamePrefix"

    return-object p0

    :pswitch_21f
    return-object v8

    :pswitch_220
    const-string p0, "extendedPostalCode"

    return-object p0

    :pswitch_223
    return-object v9

    :pswitch_224
    const-string p0, "addressLocality"

    return-object p0

    :pswitch_227
    const-string p0, "personMiddleInitial"

    return-object p0

    :pswitch_22a
    const-string p0, "addressCountry"

    return-object p0

    :pswitch_22d
    const-string p0, "phoneNumberDevice"

    return-object p0

    :pswitch_230
    const-string p0, "streetAddress"

    return-object p0

    :pswitch_233
    return-object v10

    :pswitch_234
    return-object v11

    :pswitch_235
    return-object v12

    :pswitch_236
    const-string p0, "phoneNational"

    return-object p0

    :pswitch_239
    return-object v13

    :pswitch_23a
    const-string p0, "smsOTPCode"

    return-object p0

    :pswitch_23d
    const-string p0, "birthDateYear"

    return-object p0

    :sswitch_data_240
    .sparse-switch
        -0x7ab827a6 -> :sswitch_1e0
        -0x72476d20 -> :sswitch_1d5
        -0x6df5a7d8 -> :sswitch_1cc
        -0x6cd04ac1 -> :sswitch_1c1
        -0x6c8dd7a5 -> :sswitch_1b8
        -0x68c2726a -> :sswitch_1af
        -0x6446fcbc -> :sswitch_1a6
        -0x62e1a7de -> :sswitch_19b
        -0x5d6852dd -> :sswitch_18f
        -0x580574bf -> :sswitch_181
        -0x5443ec11 -> :sswitch_173
        -0x521f7081 -> :sswitch_165
        -0x4a7a0d3f -> :sswitch_159
        -0x46b1d806 -> :sswitch_14b
        -0x449b65ae -> :sswitch_13f
        -0x31d43b03 -> :sswitch_131
        -0x30c50a40 -> :sswitch_123
        -0x2c8af644 -> :sswitch_115
        -0x24989afa -> :sswitch_109
        -0x248f026b -> :sswitch_fd
        -0x20bc980a -> :sswitch_ef
        -0xfd6772a -> :sswitch_e3
        0x337a8b -> :sswitch_d5
        0x5c24b9c -> :sswitch_c7
        0xf1790fd -> :sswitch_b9
        0x230ed603 -> :sswitch_ab
        0x2f98f80f -> :sswitch_9d
        0x352e686d -> :sswitch_8f
        0x3b11f696 -> :sswitch_83
        0x3fbd627d -> :sswitch_75
        0x4889ba9b -> :sswitch_69
        0x578fdfa8 -> :sswitch_5b
        0x631a4ca9 -> :sswitch_4f
        0x728d6502 -> :sswitch_41
        0x77dfc158 -> :sswitch_35
        0x77e93bdf -> :sswitch_27
    .end sparse-switch

    :pswitch_data_2d2
    .packed-switch 0x0
        :pswitch_23d
        :pswitch_23a
        :pswitch_239
        :pswitch_236
        :pswitch_235
        :pswitch_234
        :pswitch_233
        :pswitch_230
        :pswitch_22d
        :pswitch_22a
        :pswitch_227
        :pswitch_224
        :pswitch_223
        :pswitch_220
        :pswitch_21f
        :pswitch_21c
        :pswitch_219
        :pswitch_216
        :pswitch_215
        :pswitch_214
        :pswitch_211
        :pswitch_210
        :pswitch_20d
        :pswitch_20a
        :pswitch_207
        :pswitch_204
        :pswitch_201
        :pswitch_1fe
        :pswitch_1fd
        :pswitch_1fa
        :pswitch_1f9
        :pswitch_1f6
        :pswitch_1f5
        :pswitch_1f2
        :pswitch_1f1
        :pswitch_1ee
    .end packed-switch
.end method
