.class Lcom/baidu/launcher/db/LauncherDatabaseHelper$CellComparator;
.super Ljava/lang/Object;
.source "LauncherDatabaseHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/db/LauncherDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CellComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/ContentValues;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/db/LauncherDatabaseHelper$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/baidu/launcher/db/LauncherDatabaseHelper$CellComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    .locals 7
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 530
    const-string v6, "cellX"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 531
    .local v0, lCellX:I
    const-string v6, "cellY"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 532
    .local v1, lCellY:I
    const-string v6, "cellX"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 533
    .local v2, rCellX:I
    const-string v6, "cellY"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 534
    .local v3, rCellY:I
    if-ge v1, v3, :cond_1

    .line 545
    :cond_0
    :goto_0
    return v4

    .line 536
    :cond_1
    if-le v1, v3, :cond_2

    move v4, v5

    .line 537
    goto :goto_0

    .line 539
    :cond_2
    if-lt v0, v2, :cond_0

    .line 541
    if-le v0, v2, :cond_3

    move v4, v5

    .line 542
    goto :goto_0

    .line 545
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 527
    check-cast p1, Landroid/content/ContentValues;

    .end local p1
    check-cast p2, Landroid/content/ContentValues;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/baidu/launcher/db/LauncherDatabaseHelper$CellComparator;->compare(Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method
