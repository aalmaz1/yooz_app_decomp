.class public Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "com.google.android.gms:play-services-auth@@20.6.0"


# static fields
.field private static zba:Z = false


# instance fields
.field private zbb:Z

.field private zbc:Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

.field private zbd:Z

.field private zbe:I

.field private zbf:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zbb:Z

    return-void
.end method

.method static bridge synthetic zba(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zbe:I

    return p0
.end method

.method static bridge synthetic zbb(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zbf:Landroid/content/Intent;

    return-object p0
.end method

.method private final zbc()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/auth/api/signin/internal/zbw;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/auth/api/signin/internal/zbw;-><init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;Lcom/google/android/gms/auth/api/signin/internal/zbv;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v1}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    sput-boolean v3, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zba:Z

    return-void
.end method

.method private final zbd(I)V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    new-instance p1, Landroid/content/Intent;

    .line 2
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "googleSignInStatus"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->setResult(ILandroid/content/Intent;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->finish()V

    sput-boolean v0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zba:Z

    return-void
.end method

.method private final zbe(Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.auth.GOOGLE_SIGN_IN"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    const-string p1, "com.google.android.gms"

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1a

    .line 4
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    :goto_1a
    iget-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zbc:Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    const-string v1, "config"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const p1, 0xa002

    .line 6
    :try_start_24
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_27
    .catch Landroid/content/ActivityNotFoundException; {:try_start_24 .. :try_end_27} :catch_28

    return-void

    :catch_28
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zbb:Z

    const-string p1, "AuthSignInClient"

    const-string v0, "Could not launch sign in Intent. Google Play Service is probably being updated..."

    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x11

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zbd(I)V

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zbb:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->setResult(I)V

    const v0, 0xa002

    if-eq p1, v0, :cond_f

    return-void

    :cond_f
    const/16 p1, 0x8

    if-eqz p3, :cond_60

    const-string v0, "signInAccount"

    .line 2
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/api/signin/SignInAccount;

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zba()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v2

    if-eqz v2, :cond_4a

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zba()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/internal/zbn;->zbc(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zbn;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zbc:Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zba()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v2

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/auth/api/signin/internal/zbn;->zbe(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 10
    invoke-virtual {p3, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "googleSignInAccount"

    .line 11
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zbd:Z

    iput p2, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zbe:I

    iput-object p3, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zbf:Landroid/content/Intent;

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zbc()V

    return-void

    :cond_4a
    const-string p2, "errorCode"

    .line 3
    invoke-virtual {p3, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 5
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xd

    if-ne p1, p2, :cond_5c

    const/16 p1, 0x30d5

    .line 6
    :cond_5c
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zbd(I)V

    return-void

    .line 4
    :cond_60
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zbd(I)V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "com.google.android.gms.auth.NO_IMPL"

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/16 p1, 0x30d4

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zbd(I)V

    return-void

    :cond_1c
    const-string v2, "com.google.android.gms.auth.GOOGLE_SIGN_IN"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "AuthSignInClient"

    if-nez v2, :cond_44

    const-string v2, "com.google.android.gms.auth.APPAUTH_SIGN_IN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_44

    .line 21
    :cond_2f
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unknown action: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->finish()V

    return-void

    :cond_44
    :goto_44
    const-string v2, "config"

    .line 7
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    const/4 v2, 0x0

    if-nez v0, :cond_62

    const-string p1, "Activity started with invalid configuration."

    .line 9
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-virtual {p0, v2}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->setResult(I)V

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->finish()V

    return-void

    :cond_62
    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zbc:Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    if-nez p1, :cond_7a

    sget-boolean p1, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zba:Z

    if-eqz p1, :cond_73

    .line 12
    invoke-virtual {p0, v2}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->setResult(I)V

    const/16 p1, 0x30d6

    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zbd(I)V

    return-void

    :cond_73
    const/4 p1, 0x1

    sput-boolean p1, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zba:Z

    .line 14
    invoke-direct {p0, v1}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zbe(Ljava/lang/String;)V

    return-void

    :cond_7a
    const-string v0, "signingInGoogleApiClients"

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zbd:Z

    if-eqz v0, :cond_9c

    const-string v0, "signInResultCode"

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zbe:I

    const-string v0, "signInResultData"

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zbf:Landroid/content/Intent;

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zbc()V

    :cond_9c
    return-void
.end method

.method public final onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zba:Z

    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "signingInGoogleApiClients"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zbd:Z

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zbd:Z

    if-eqz v0, :cond_1c

    iget v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zbe:I

    const-string v1, "signInResultCode"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zbf:Landroid/content/Intent;

    const-string v1, "signInResultData"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1c
    return-void
.end method
