.class Lorg/apache/commons/lang3/text/StrLookup$SystemPropertiesStrLookup;
.super Lorg/apache/commons/lang3/text/StrLookup;
.source "StrLookup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/text/StrLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemPropertiesStrLookup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/lang3/text/StrLookup<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 168
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrLookup;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/lang3/text/StrLookup$1;)V
    .registers 2

    .line 168
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrLookup$SystemPropertiesStrLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 176
    :try_start_6
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method
