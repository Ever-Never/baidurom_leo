.class Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/homeview/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellAndSpan"
.end annotation


# instance fields
.field spanX:I

.field spanY:I

.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/CellLayout;

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/ui/homeview/CellLayout;IIII)V
    .locals 0
    .parameter
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 3431
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->this$0:Lcom/baidu/launcher/ui/homeview/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3432
    iput p2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->x:I

    .line 3433
    iput p3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->y:I

    .line 3434
    iput p4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanX:I

    .line 3435
    iput p5, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;->spanY:I

    .line 3436
    return-void
.end method
