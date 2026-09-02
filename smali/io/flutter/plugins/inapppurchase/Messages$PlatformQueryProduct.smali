.class public final Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/inapppurchase/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlatformQueryProduct"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct$Builder;
    }
.end annotation


# instance fields
.field private productId:Ljava/lang/String;

.field private productType:Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;"
        }
    .end annotation

    .line 202
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;

    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;-><init>()V

    const/4 v1, 0x0

    .line 203
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 204
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;->setProductId(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 205
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 206
    invoke-static {}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;->values()[Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    move-result-object v1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aget-object p0, v1, p0

    invoke-virtual {v0, p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;->setProductType(Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;)V

    return-object v0
.end method


# virtual methods
.method public getProductId()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductType()Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;
    .registers 2

    .line 154
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;->productType:Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    return-object v0
.end method

.method public setProductId(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 148
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;->productId:Ljava/lang/String;

    return-void

    .line 146
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Nonnull field \"productId\" is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProductType(Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 161
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;->productType:Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    return-void

    .line 159
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Nonnull field \"productType\" is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method toList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 196
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;->productType:Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    if-nez v1, :cond_11

    const/4 v1, 0x0

    goto :goto_17

    :cond_11
    iget v1, v1, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
