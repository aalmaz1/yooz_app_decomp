.class public interface abstract Lcom/amazonaws/amplify/amplify_secure_storage/pigeons/AmplifySecureStoragePigeon;
.super Ljava/lang/Object;
.source "AmplifySecureStoragePigeon.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/amplify/amplify_secure_storage/pigeons/AmplifySecureStoragePigeon$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008f\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eJ2\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\t\u0012\u0004\u0012\u00020\u00030\u0008H&J4\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u001a\u0010\u0007\u001a\u0016\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\t\u0012\u0004\u0012\u00020\u00030\u0008H&J*\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\t\u0012\u0004\u0012\u00020\u00030\u0008H&J<\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\r\u001a\u0004\u0018\u00010\u00052\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\t\u0012\u0004\u0012\u00020\u00030\u0008H&\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/amazonaws/amplify/amplify_secure_storage/pigeons/AmplifySecureStoragePigeon;",
        "",
        "delete",
        "",
        "namespace",
        "",
        "key",
        "callback",
        "Lkotlin/Function1;",
        "Lkotlin/Result;",
        "read",
        "removeAll",
        "write",
        "value",
        "Companion",
        "amplify_secure_storage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/amazonaws/amplify/amplify_secure_storage/pigeons/AmplifySecureStoragePigeon$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/amazonaws/amplify/amplify_secure_storage/pigeons/AmplifySecureStoragePigeon$Companion;->$$INSTANCE:Lcom/amazonaws/amplify/amplify_secure_storage/pigeons/AmplifySecureStoragePigeon$Companion;

    sput-object v0, Lcom/amazonaws/amplify/amplify_secure_storage/pigeons/AmplifySecureStoragePigeon;->Companion:Lcom/amazonaws/amplify/amplify_secure_storage/pigeons/AmplifySecureStoragePigeon$Companion;

    return-void
.end method


# virtual methods
.method public abstract delete(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract read(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeAll(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method
