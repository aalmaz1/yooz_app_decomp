.class public final enum Landroidx/camera/view/PreviewView$ScaleType;
.super Ljava/lang/Enum;
.source "PreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/view/PreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/view/PreviewView$ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/view/PreviewView$ScaleType;

.field public static final enum FILL_CENTER:Landroidx/camera/view/PreviewView$ScaleType;

.field public static final enum FILL_END:Landroidx/camera/view/PreviewView$ScaleType;

.field public static final enum FILL_START:Landroidx/camera/view/PreviewView$ScaleType;

.field public static final enum FIT_CENTER:Landroidx/camera/view/PreviewView$ScaleType;

.field public static final enum FIT_END:Landroidx/camera/view/PreviewView$ScaleType;

.field public static final enum FIT_START:Landroidx/camera/view/PreviewView$ScaleType;


# instance fields
.field private final mId:I


# direct methods
.method private static synthetic $values()[Landroidx/camera/view/PreviewView$ScaleType;
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [Landroidx/camera/view/PreviewView$ScaleType;

    const/4 v1, 0x0

    .line 812
    sget-object v2, Landroidx/camera/view/PreviewView$ScaleType;->FILL_START:Landroidx/camera/view/PreviewView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroidx/camera/view/PreviewView$ScaleType;->FILL_CENTER:Landroidx/camera/view/PreviewView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroidx/camera/view/PreviewView$ScaleType;->FILL_END:Landroidx/camera/view/PreviewView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroidx/camera/view/PreviewView$ScaleType;->FIT_START:Landroidx/camera/view/PreviewView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroidx/camera/view/PreviewView$ScaleType;->FIT_CENTER:Landroidx/camera/view/PreviewView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroidx/camera/view/PreviewView$ScaleType;->FIT_END:Landroidx/camera/view/PreviewView$ScaleType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 823
    new-instance v0, Landroidx/camera/view/PreviewView$ScaleType;

    const-string v1, "FILL_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/camera/view/PreviewView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/camera/view/PreviewView$ScaleType;->FILL_START:Landroidx/camera/view/PreviewView$ScaleType;

    .line 831
    new-instance v0, Landroidx/camera/view/PreviewView$ScaleType;

    const-string v1, "FILL_CENTER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroidx/camera/view/PreviewView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/camera/view/PreviewView$ScaleType;->FILL_CENTER:Landroidx/camera/view/PreviewView$ScaleType;

    .line 841
    new-instance v0, Landroidx/camera/view/PreviewView$ScaleType;

    const-string v1, "FILL_END"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroidx/camera/view/PreviewView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/camera/view/PreviewView$ScaleType;->FILL_END:Landroidx/camera/view/PreviewView$ScaleType;

    .line 852
    new-instance v0, Landroidx/camera/view/PreviewView$ScaleType;

    const-string v1, "FIT_START"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Landroidx/camera/view/PreviewView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/camera/view/PreviewView$ScaleType;->FIT_START:Landroidx/camera/view/PreviewView$ScaleType;

    .line 861
    new-instance v0, Landroidx/camera/view/PreviewView$ScaleType;

    const-string v1, "FIT_CENTER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Landroidx/camera/view/PreviewView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/camera/view/PreviewView$ScaleType;->FIT_CENTER:Landroidx/camera/view/PreviewView$ScaleType;

    .line 872
    new-instance v0, Landroidx/camera/view/PreviewView$ScaleType;

    const-string v1, "FIT_END"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Landroidx/camera/view/PreviewView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/camera/view/PreviewView$ScaleType;->FIT_END:Landroidx/camera/view/PreviewView$ScaleType;

    .line 812
    invoke-static {}, Landroidx/camera/view/PreviewView$ScaleType;->$values()[Landroidx/camera/view/PreviewView$ScaleType;

    move-result-object v0

    sput-object v0, Landroidx/camera/view/PreviewView$ScaleType;->$VALUES:[Landroidx/camera/view/PreviewView$ScaleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 876
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 877
    iput p3, p0, Landroidx/camera/view/PreviewView$ScaleType;->mId:I

    return-void
.end method

.method static fromId(I)Landroidx/camera/view/PreviewView$ScaleType;
    .registers 6

    .line 885
    invoke-static {}, Landroidx/camera/view/PreviewView$ScaleType;->values()[Landroidx/camera/view/PreviewView$ScaleType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 886
    iget v4, v3, Landroidx/camera/view/PreviewView$ScaleType;->mId:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 890
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown scale type id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/view/PreviewView$ScaleType;
    .registers 2

    .line 812
    const-class v0, Landroidx/camera/view/PreviewView$ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/view/PreviewView$ScaleType;

    return-object p0
.end method

.method public static values()[Landroidx/camera/view/PreviewView$ScaleType;
    .registers 1

    .line 812
    sget-object v0, Landroidx/camera/view/PreviewView$ScaleType;->$VALUES:[Landroidx/camera/view/PreviewView$ScaleType;

    invoke-virtual {v0}, [Landroidx/camera/view/PreviewView$ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/view/PreviewView$ScaleType;

    return-object v0
.end method


# virtual methods
.method getId()I
    .registers 2

    .line 881
    iget v0, p0, Landroidx/camera/view/PreviewView$ScaleType;->mId:I

    return v0
.end method
