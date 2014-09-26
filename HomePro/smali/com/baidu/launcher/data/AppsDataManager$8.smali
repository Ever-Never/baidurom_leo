.class Lcom/baidu/launcher/data/AppsDataManager$8;
.super Ljava/lang/Object;
.source "AppsDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/data/AppsDataManager;->addItemToDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/data/AppsDataManager;

.field final synthetic val$item:Lcom/baidu/launcher/data/item/ListItemInfo;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/data/AppsDataManager;Landroid/content/ContentValues;Lcom/baidu/launcher/data/item/ListItemInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/baidu/launcher/data/AppsDataManager$8;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    iput-object p2, p0, Lcom/baidu/launcher/data/AppsDataManager$8;->val$values:Landroid/content/ContentValues;

    iput-object p3, p0, Lcom/baidu/launcher/data/AppsDataManager$8;->val$item:Lcom/baidu/launcher/data/item/ListItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager$8;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    iget-object v1, p0, Lcom/baidu/launcher/data/AppsDataManager$8;->val$values:Landroid/content/ContentValues;

    iget-object v2, p0, Lcom/baidu/launcher/data/AppsDataManager$8;->val$item:Lcom/baidu/launcher/data/item/ListItemInfo;

    #calls: Lcom/baidu/launcher/data/AppsDataManager;->doAddItemToDataBase(Landroid/content/ContentValues;Lcom/baidu/launcher/data/item/ListItemInfo;)V
    invoke-static {v0, v1, v2}, Lcom/baidu/launcher/data/AppsDataManager;->access$700(Lcom/baidu/launcher/data/AppsDataManager;Landroid/content/ContentValues;Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 1011
    return-void
.end method
