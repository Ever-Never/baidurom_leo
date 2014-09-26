.class final Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CloudStorageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;


# direct methods
.method public constructor <init>(Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$DatabaseHelper;->this$0:Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;

    .line 96
    const-string v0, "cloudstorage.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 97
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$DatabaseHelper;->this$0:Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;

    #calls: Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;->createCloudStorageTable(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;->access$0(Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 102
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 106
    if-ge p2, p3, :cond_0

    .line 107
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$DatabaseHelper;->this$0:Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;

    #calls: Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;->createCloudStorageTable(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;->access$0(Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 109
    :cond_0
    return-void
.end method
