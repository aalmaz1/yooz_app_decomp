.class public Lcom/inuker/bluetooth/library/utils/hook/utils/FieldUtils;
.super Ljava/lang/Object;
.source "FieldUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeclaredField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    const-string v3, "The class must not be null"

    new-array v4, v1, [Ljava/lang/Object;

    .line 13
    invoke-static {v2, v3, v4}, Lcom/inuker/bluetooth/library/utils/hook/utils/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "The field name must not be blank/empty"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/inuker/bluetooth/library/utils/hook/utils/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 17
    :try_start_1a
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/inuker/bluetooth/library/utils/hook/utils/MemberUtils;->isAccessible(Ljava/lang/reflect/Member;)Z

    move-result p1

    if-nez p1, :cond_2b

    if-eqz p2, :cond_2a

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_29
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1a .. :try_end_29} :catch_2c

    goto :goto_2b

    :cond_2a
    return-object v1

    :cond_2b
    :goto_2b
    return-object p0

    :catch_2c
    return-object v1
.end method
