.class final Lcom/baidu/launcher/ui/common/GridLayout$Arc;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/common/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Arc"
.end annotation


# instance fields
.field public final span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

.field public valid:Z

.field public final value:Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/ui/common/GridLayout$Interval;Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;)V
    .locals 1
    .parameter "span"
    .parameter "value"

    .prologue
    .line 1858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1856
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Arc;->valid:Z

    .line 1859
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Arc;->span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    .line 1860
    iput-object p2, p0, Lcom/baidu/launcher/ui/common/GridLayout$Arc;->value:Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;

    .line 1861
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Arc;->span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Arc;->valid:Z

    if-nez v0, :cond_0

    const-string v0, "+>"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Arc;->value:Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "->"

    goto :goto_0
.end method
