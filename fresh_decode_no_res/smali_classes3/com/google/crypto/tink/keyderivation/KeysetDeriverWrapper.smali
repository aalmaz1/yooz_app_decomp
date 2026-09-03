.class public final Lcom/google/crypto/tink/keyderivation/KeysetDeriverWrapper;
.super Ljava/lang/Object;
.source "KeysetDeriverWrapper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static register()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    invoke-static {}, Lcom/google/crypto/tink/keyderivation/internal/KeysetDeriverWrapper;->register()V

    return-void
.end method
