.class public final Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient$Builder;
.super Ljava/lang/Object;
.source "AndroidKeystoreKmsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field keyUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient$Builder;->keyUri:Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "need Android Keystore on Android M or newer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient;
    .locals 2

    .line 98
    new-instance v0, Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient;-><init>(Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient$Builder;Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient$1;)V

    return-object v0
.end method

.method public setKeyUri(Ljava/lang/String;)Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 90
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android-keystore://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iput-object p1, p0, Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient$Builder;->keyUri:Ljava/lang/String;

    return-object p0

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "val must start with android-keystore://"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
