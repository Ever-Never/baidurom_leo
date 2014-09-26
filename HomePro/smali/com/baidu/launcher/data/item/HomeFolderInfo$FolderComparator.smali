.class Lcom/baidu/launcher/data/item/HomeFolderInfo$FolderComparator;
.super Ljava/lang/Object;
.source "HomeFolderInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/data/item/HomeFolderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FolderComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/baidu/launcher/data/item/HomeShortcutInfo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/data/item/HomeFolderInfo$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/baidu/launcher/data/item/HomeFolderInfo$FolderComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/baidu/launcher/data/item/HomeShortcutInfo;Lcom/baidu/launcher/data/item/HomeShortcutInfo;)I
    .locals 2
    .parameter "left"
    .parameter "right"

    .prologue
    .line 166
    iget v0, p1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellX:I

    iget v1, p2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellX:I

    if-le v0, v1, :cond_0

    .line 167
    const/4 v0, 0x1

    .line 171
    :goto_0
    return v0

    .line 168
    :cond_0
    iget v0, p1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellX:I

    iget v1, p2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellX:I

    if-ge v0, v1, :cond_1

    .line 169
    const/4 v0, -0x1

    goto :goto_0

    .line 171
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    check-cast p1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .end local p1
    check-cast p2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/baidu/launcher/data/item/HomeFolderInfo$FolderComparator;->compare(Lcom/baidu/launcher/data/item/HomeShortcutInfo;Lcom/baidu/launcher/data/item/HomeShortcutInfo;)I

    move-result v0

    return v0
.end method
