.class Landroidx/heifwriter/HeifWriter$1;
.super Ljava/lang/Object;
.source "HeifWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/heifwriter/HeifWriter;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/heifwriter/HeifWriter;


# direct methods
.method constructor <init>(Landroidx/heifwriter/HeifWriter;)V
    .registers 2

    .line 696
    iput-object p1, p0, Landroidx/heifwriter/HeifWriter$1;->this$0:Landroidx/heifwriter/HeifWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 700
    :try_start_0
    iget-object v0, p0, Landroidx/heifwriter/HeifWriter$1;->this$0:Landroidx/heifwriter/HeifWriter;

    invoke-virtual {v0}, Landroidx/heifwriter/HeifWriter;->closeInternal()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
