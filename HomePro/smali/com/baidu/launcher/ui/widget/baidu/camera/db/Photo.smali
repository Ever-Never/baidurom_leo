.class public Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;
.super Ljava/lang/Object;
.source "Photo.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private date:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "date"
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "id"
        generatedId = true
    .end annotation
.end field

.field private isDefultFace:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "is_defult_face"
        defaultValue = "0"
    .end annotation
.end field

.field private path:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "path"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "title"
    .parameter "path"
    .parameter "date"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->title:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->path:Ljava/lang/String;

    .line 35
    iput-wide p3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->date:J

    .line 36
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 110
    :cond_0
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->date:J

    return-wide v0
.end method

.method public getFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, file:Ljava/io/File;
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->path:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->path:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .restart local v0       #file:Ljava/io/File;
    :cond_0
    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->id:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isDefultFace()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->isDefultFace:Z

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->bitmap:Landroid/graphics/Bitmap;

    .line 103
    return-void
.end method

.method public setDate(J)V
    .locals 0
    .parameter "date"

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->date:J

    .line 68
    return-void
.end method

.method public setDefultFace(Z)V
    .locals 0
    .parameter "isDefultFace"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->isDefultFace:Z

    .line 76
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 43
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->id:I

    .line 44
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->path:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->title:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Photo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", path=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->date:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDefultFace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->isDefultFace:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
