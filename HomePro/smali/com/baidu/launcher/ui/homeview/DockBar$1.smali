.class Lcom/baidu/launcher/ui/homeview/DockBar$1;
.super Ljava/lang/Object;
.source "DockBar.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/DockBar;->setItems(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/baidu/launcher/ui/homeview/DockBarItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/DockBar;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/DockBar;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/DockBar$1;->this$0:Lcom/baidu/launcher/ui/homeview/DockBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/baidu/launcher/ui/homeview/DockBarItem;Lcom/baidu/launcher/ui/homeview/DockBarItem;)I
    .locals 4
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 331
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v0

    .line 332
    .local v0, linfo:Lcom/baidu/launcher/data/item/HomeItemInfo;
    invoke-virtual {p2}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v1

    .line 333
    .local v1, rinfo:Lcom/baidu/launcher/data/item/HomeItemInfo;
    iget v2, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellX:I

    iget v3, v1, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellX:I

    sub-int/2addr v2, v3

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 328
    check-cast p1, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .end local p1
    check-cast p2, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/baidu/launcher/ui/homeview/DockBar$1;->compare(Lcom/baidu/launcher/ui/homeview/DockBarItem;Lcom/baidu/launcher/ui/homeview/DockBarItem;)I

    move-result v0

    return v0
.end method
