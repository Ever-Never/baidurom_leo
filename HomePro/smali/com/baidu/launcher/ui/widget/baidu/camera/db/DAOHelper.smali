.class public Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.source "DAOHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "widget_camera_db"

.field private static final DATABASE_VERSON:I = 0x2

.field private static daoHelper:Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;


# instance fields
.field private dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 22
    const-string v0, "widget_camera_db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 23
    return-void
.end method

.method public static getInstanse(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;->daoHelper:Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;->daoHelper:Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;

    .line 29
    :cond_0
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;->daoHelper:Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->close()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 57
    return-void
.end method

.method public getPhotoHelperDao()Lcom/j256/ormlite/dao/Dao;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;->dao:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 62
    :try_start_0
    const-class v1, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;->dao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;->dao:Lcom/j256/ormlite/dao/Dao;

    return-object v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 2
    .parameter "db"
    .parameter "connectionSource"

    .prologue
    .line 35
    :try_start_0
    const-class v1, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    invoke-static {p2, v1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, e:Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 3
    .parameter "db"
    .parameter "connectionSource"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 46
    :try_start_0
    const-class v1, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method
