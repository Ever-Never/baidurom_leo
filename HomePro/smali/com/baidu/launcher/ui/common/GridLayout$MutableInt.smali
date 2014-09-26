.class final Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/common/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MutableInt"
.end annotation


# instance fields
.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1875
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;->reset()V

    .line 1876
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1879
    iput p1, p0, Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;->value:I

    .line 1880
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 1883
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;->value:I

    .line 1884
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1888
    iget v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
