.class Lcom/baidu/launcher/data/HomeDataManager$2;
.super Ljava/lang/Object;
.source "HomeDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/data/HomeDataManager;->addItemToDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;JIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/data/HomeDataManager;

.field final synthetic val$item:Lcom/baidu/launcher/data/item/HomeItemInfo;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/data/HomeDataManager;Landroid/content/ContentValues;Lcom/baidu/launcher/data/item/HomeItemInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/baidu/launcher/data/HomeDataManager$2;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    iput-object p2, p0, Lcom/baidu/launcher/data/HomeDataManager$2;->val$values:Landroid/content/ContentValues;

    iput-object p3, p0, Lcom/baidu/launcher/data/HomeDataManager$2;->val$item:Lcom/baidu/launcher/data/item/HomeItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager$2;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    iget-object v1, p0, Lcom/baidu/launcher/data/HomeDataManager$2;->val$values:Landroid/content/ContentValues;

    iget-object v2, p0, Lcom/baidu/launcher/data/HomeDataManager$2;->val$item:Lcom/baidu/launcher/data/item/HomeItemInfo;

    #calls: Lcom/baidu/launcher/data/HomeDataManager;->doAddItemToDataBase(Landroid/content/ContentValues;Lcom/baidu/launcher/data/item/HomeItemInfo;)V
    invoke-static {v0, v1, v2}, Lcom/baidu/launcher/data/HomeDataManager;->access$100(Lcom/baidu/launcher/data/HomeDataManager;Landroid/content/ContentValues;Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    .line 1052
    return-void
.end method
