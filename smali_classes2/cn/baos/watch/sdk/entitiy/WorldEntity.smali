.class public Lcn/baos/watch/sdk/entitiy/WorldEntity;
.super Ljava/lang/Object;
.source "WorldEntity.java"


# instance fields
.field public cityCn:Ljava/lang/String;

.field public cityEn:Ljava/lang/String;

.field public continentsCn:Ljava/lang/String;

.field public continentsEn:Ljava/lang/String;

.field public contryCn:Ljava/lang/String;

.field public contryEn:Ljava/lang/String;

.field public gMT:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "GMT"
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public reserve:I

.field public secondsFromGMT:Ljava/lang/Integer;

.field public timezone:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
