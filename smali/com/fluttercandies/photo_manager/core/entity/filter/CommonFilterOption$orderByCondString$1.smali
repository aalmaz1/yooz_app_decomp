.class final Lcom/fluttercandies/photo_manager/core/entity/filter/CommonFilterOption$orderByCondString$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CommonFilterOption.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fluttercandies/photo_manager/core/entity/filter/CommonFilterOption;->orderByCondString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/fluttercandies/photo_manager/core/entity/filter/CommonFilterOption$orderByCondString$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fluttercandies/photo_manager/core/entity/filter/CommonFilterOption$orderByCondString$1;

    invoke-direct {v0}, Lcom/fluttercandies/photo_manager/core/entity/filter/CommonFilterOption$orderByCondString$1;-><init>()V

    sput-object v0, Lcom/fluttercandies/photo_manager/core/entity/filter/CommonFilterOption$orderByCondString$1;->INSTANCE:Lcom/fluttercandies/photo_manager/core/entity/filter/CommonFilterOption$orderByCondString$1;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;)Ljava/lang/CharSequence;
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;->getOrder()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 43
    check-cast p1, Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;

    invoke-virtual {p0, p1}, Lcom/fluttercandies/photo_manager/core/entity/filter/CommonFilterOption$orderByCondString$1;->invoke(Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
