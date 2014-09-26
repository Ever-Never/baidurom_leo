.class public Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;
.super Ljava/lang/Object;
.source "PhotoDAOManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoDAOManager"

.field public static manager:Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;


# instance fields
.field public dao:Lcom/j256/ormlite/dao/Dao;
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

.field public helper:Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;->manager:Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;->getInstanse(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;->helper:Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;

    .line 24
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;->helper:Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;->getPhotoHelperDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 25
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;->manager:Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;->manager:Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;

    .line 38
    :cond_0
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;->manager:Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;)V
    .locals 1
    .parameter "photo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 68
    return-void
.end method

.method public add(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 59
    .local p1, photos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;>;"
    if-eqz p1, :cond_0

    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    .line 61
    .local v1, person:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    goto :goto_0

    .line 64
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #person:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;->helper:Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;->helper:Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;->close()V

    .line 47
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;->helper:Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;

    .line 50
    :cond_0
    return-void
.end method

.method public delete(Ljava/util/List;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 84
    .local p1, photos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/util/Collection;)I

    move-result v0

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public delete(Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;)V
    .locals 1
    .parameter "photo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 77
    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->delete()V

    .line 79
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    .line 81
    :cond_0
    return-void
.end method

.method public getDefultFace()Landroid/graphics/drawable/Drawable;
    .locals 9

    .prologue
    .line 130
    const/4 v1, 0x0

    .line 132
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;->dao:Lcom/j256/ormlite/dao/Dao;

    const-string v7, "is_defult_face"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 133
    .local v5, photos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 134
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    .line 135
    .local v4, photo:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;
    invoke-virtual {v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 136
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 137
    invoke-virtual {v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 139
    :cond_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v2, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    move-object v1, v2

    .line 148
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #photo:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;
    .end local v5           #photos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;>;"
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 141
    .restart local v5       #photos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;>;"
    :cond_1
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02019f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 143
    .end local v5           #photos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;>;"
    :catch_0
    move-exception v3

    .line 144
    .local v3, e:Ljava/sql/SQLException;
    invoke-virtual {v3}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public quaryAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;>;"
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v0

    .line 112
    return-object v0
.end method

.method public setDefultFace(Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;)V
    .locals 7
    .parameter "photo"

    .prologue
    .line 117
    :try_start_0
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;->dao:Lcom/j256/ormlite/dao/Dao;

    const-string v5, "is_defult_face"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 118
    .local v3, photos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    .line 119
    .local v2, p:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->setDefultFace(Z)V

    .line 120
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #p:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;
    .end local v3           #photos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;>;"
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 127
    .end local v0           #e:Ljava/sql/SQLException;
    :goto_1
    return-void

    .line 122
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #photos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;>;"
    :cond_0
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {p1, v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->setDefultFace(Z)V

    .line 123
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public update(Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;)I
    .locals 1
    .parameter "photo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    move-result v0

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
