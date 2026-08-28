.class public abstract Lcom/google/android/gms/internal/measurement/zzck;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "com.google.android.gms:play-services-measurement-impl@@22.1.2"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 11

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1
    sget-object v5, Lcom/google/android/gms/internal/measurement/zzcm;->zza:Lcom/google/android/gms/internal/measurement/zzcm;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzck;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/google/android/gms/internal/measurement/zzcm;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/google/android/gms/internal/measurement/zzcm;)V
    .registers 7

    const/4 p3, 0x0

    if-nez p2, :cond_5

    :goto_3
    move-object p2, p3

    goto :goto_18

    .line 6
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcf;->zza()Lcom/google/android/gms/internal/measurement/zzci;

    move-result-object p4

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcj;->zzb:Lcom/google/android/gms/internal/measurement/zzcj;

    .line 7
    invoke-interface {p4, p2, p5, v0}, Lcom/google/android/gms/internal/measurement/zzci;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcm;Lcom/google/android/gms/internal/measurement/zzcj;)Ljava/lang/String;

    move-result-object p4

    const-string p5, ""

    .line 8
    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_18

    goto :goto_3

    :cond_18
    :goto_18
    const/4 p4, 0x1

    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method
