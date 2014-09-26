.class public final Lcom/baidu/bulletin/database/Session;
.super Ljava/lang/Object;
.source "Session.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDatabase:Lcom/baidu/bulletin/database/DataBaseHelper;

.field private mFileds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private mOneToManyFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private mTableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/baidu/bulletin/database/Session;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/database/Session;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 4
    .parameter "context"
    .parameter "clazz"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v1, Lcom/baidu/bulletin/database/DataBaseHelper;

    invoke-direct {v1, p1}, Lcom/baidu/bulletin/database/DataBaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/bulletin/database/Session;->mDatabase:Lcom/baidu/bulletin/database/DataBaseHelper;

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/bulletin/database/Session;->mFileds:Ljava/util/List;

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/bulletin/database/Session;->mOneToManyFields:Ljava/util/List;

    .line 29
    invoke-direct {p0, p2}, Lcom/baidu/bulletin/database/Session;->getAnnotationFields(Ljava/lang/Class;)V

    .line 30
    invoke-virtual {p0, p2}, Lcom/baidu/bulletin/database/Session;->getTableNamefromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/bulletin/database/Session;->mTableName:Ljava/lang/String;

    .line 32
    iget-object v1, p0, Lcom/baidu/bulletin/database/Session;->mTableName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/baidu/bulletin/database/Session;->isTableExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    sget-object v1, Lcom/baidu/bulletin/database/Session;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "table "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bulletin/database/Session;->mTableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exits"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/baidu/bulletin/database/Session;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/baidu/bulletin/database/Session;->createTabel(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;)V

    .line 43
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/baidu/bulletin/database/Session;->mTableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/bulletin/database/Session;->mFileds:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Lcom/baidu/bulletin/database/Session;->hasNewFiledToUpdate(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 37
    .local v0, newFields:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Field;>;"
    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/baidu/bulletin/database/Session;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/baidu/bulletin/database/Session;->addNewColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 39
    sget-object v1, Lcom/baidu/bulletin/database/Session;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newFields exits, add to table already, newFields sizie:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_1
    sget-object v1, Lcom/baidu/bulletin/database/Session;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "table "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bulletin/database/Session;->mTableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exits"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addNewColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 5
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 383
    .local p2, newFields:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Field;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .local v2, sqlStatement:Ljava/lang/StringBuilder;
    const-string v3, "ALTER TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bulletin/database/Session;->mTableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ADD COLUMN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 387
    .local v0, field:Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 388
    invoke-direct {p0, v0}, Lcom/baidu/bulletin/database/Session;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/baidu/bulletin/database/Session;->classToSqliteType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 393
    .end local v0           #field:Ljava/lang/reflect/Field;
    .end local v2           #sqlStatement:Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private buildInsertContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/database/Session;->objToContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method private buildSecondaryContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 12
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 177
    .local v4, foreignClass:Ljava/lang/Class;
    const/4 v5, 0x0

    .line 178
    .local v5, foreignKey:Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 179
    .local v6, foreignKeyValue:J
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 180
    .local v3, fields:[Ljava/lang/reflect/Field;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v9, v0

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v2, v0, v8

    .line 181
    .local v2, field:Ljava/lang/reflect/Field;
    const-class v11, Lcom/baidu/bulletin/database/ManyToOne;

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 182
    const-class v11, Lcom/baidu/bulletin/database/ManyToOne;

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lcom/baidu/bulletin/database/ManyToOne;

    .line 184
    .local v10, manyToOne:Lcom/baidu/bulletin/database/ManyToOne;
    invoke-interface {v10}, Lcom/baidu/bulletin/database/ManyToOne;->foreignKey()Ljava/lang/String;

    move-result-object v5

    .line 185
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v6

    .line 189
    .end local v2           #field:Ljava/lang/reflect/Field;
    .end local v10           #manyToOne:Lcom/baidu/bulletin/database/ManyToOne;
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/database/Session;->objToContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v1

    .line 190
    .local v1, contentValues:Landroid/content/ContentValues;
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    return-object v1

    .line 180
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .restart local v2       #field:Ljava/lang/reflect/Field;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private buildUpdateContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/database/Session;->objToContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method private classToSqliteType(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 396
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/String;

    if-eq p1, v0, :cond_0

    const-class v0, Ljava/lang/Character;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 398
    :cond_0
    const-string v0, "text"

    .line 410
    :goto_0
    return-object v0

    .line 399
    :cond_1
    const-class v0, Ljava/lang/Integer;

    if-eq p1, v0, :cond_2

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_2

    const-class v0, Ljava/lang/Short;

    if-eq p1, v0, :cond_2

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_2

    const-class v0, Ljava/lang/Boolean;

    if-eq p1, v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    .line 402
    :cond_2
    const-string v0, "int"

    goto :goto_0

    .line 403
    :cond_3
    const-class v0, Ljava/lang/Long;

    if-eq p1, v0, :cond_4

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    .line 404
    :cond_4
    const-string v0, "long"

    goto :goto_0

    .line 405
    :cond_5
    const-class v0, Ljava/lang/Float;

    if-eq p1, v0, :cond_6

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_6

    const-class v0, Ljava/lang/Double;

    if-eq p1, v0, :cond_6

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    .line 407
    :cond_6
    const-string v0, "double"

    goto :goto_0

    .line 410
    :cond_7
    const-string v0, "text"

    goto :goto_0
.end method

.method private createTabel(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;)V
    .locals 13
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v10, Lcom/baidu/bulletin/database/Table;

    invoke-virtual {p2, v10}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 311
    sget-object v10, Lcom/baidu/bulletin/database/Session;->TAG:Ljava/lang/String;

    const-string v11, "Clazz without Annotation by Table"

    invoke-static {v10, v11}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_0
    return-void

    .line 315
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .local v9, sqlStatement:Ljava/lang/StringBuilder;
    const-string v10, "CREATE TABLE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/baidu/bulletin/database/Session;->mTableName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v10, p0, Lcom/baidu/bulletin/database/Session;->mFileds:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_4

    .line 318
    iget-object v10, p0, Lcom/baidu/bulletin/database/Session;->mFileds:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 319
    .local v0, field:Ljava/lang/reflect/Field;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 320
    const-string v10, "_id"

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/database/Session;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 321
    const-string v10, "_id integer primary key autoincrement"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :goto_1
    iget-object v10, p0, Lcom/baidu/bulletin/database/Session;->mFileds:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-eq v4, v10, :cond_2

    .line 328
    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 323
    :cond_3
    invoke-direct {p0, v0}, Lcom/baidu/bulletin/database/Session;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/baidu/bulletin/database/Session;->classToSqliteType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 331
    .end local v0           #field:Ljava/lang/reflect/Field;
    :cond_4
    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    sget-object v10, Lcom/baidu/bulletin/database/Session;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Main table "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 339
    iget-object v10, p0, Lcom/baidu/bulletin/database/Session;->mOneToManyFields:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Field;

    .line 340
    .local v8, oneToManyField:Ljava/lang/reflect/Field;
    const-class v10, Lcom/baidu/bulletin/database/OneToMany;

    invoke-virtual {v8, v10}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/baidu/bulletin/database/OneToMany;

    .line 342
    .local v7, oneToMany:Lcom/baidu/bulletin/database/OneToMany;
    if-eqz v7, :cond_5

    .line 343
    invoke-interface {v7}, Lcom/baidu/bulletin/database/OneToMany;->cascadeType()Ljava/lang/Class;

    move-result-object v2

    .line 344
    .local v2, foreignClass:Ljava/lang/Class;
    new-instance v9, Ljava/lang/StringBuilder;

    .end local v9           #sqlStatement:Ljava/lang/StringBuilder;
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .restart local v9       #sqlStatement:Ljava/lang/StringBuilder;
    const-string v10, "CREATE TABLE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/baidu/bulletin/database/Session;->getTableNamefromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 348
    .local v1, fields:[Ljava/lang/reflect/Field;
    sget-object v10, Lcom/baidu/bulletin/database/Session;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "size is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-object v10, Lcom/baidu/bulletin/database/Session;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const/4 v3, 0x0

    .line 351
    .local v3, foreignKey:Ljava/lang/String;
    const/4 v4, 0x0

    :goto_3
    array-length v10, v1

    if-ge v4, v10, :cond_8

    .line 352
    aget-object v0, v1, v4

    .line 353
    .restart local v0       #field:Ljava/lang/reflect/Field;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 354
    const-string v10, "_id"

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/database/Session;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 355
    const-string v10, "_id integer primary key autoincrement, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 357
    :cond_6
    const-class v10, Lcom/baidu/bulletin/database/ManyToOne;

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 358
    const-class v10, Lcom/baidu/bulletin/database/ManyToOne;

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/baidu/bulletin/database/ManyToOne;

    .line 360
    .local v6, manyToOne:Lcom/baidu/bulletin/database/ManyToOne;
    invoke-interface {v6}, Lcom/baidu/bulletin/database/ManyToOne;->foreignKey()Ljava/lang/String;

    move-result-object v3

    .line 361
    goto :goto_4

    .line 362
    .end local v6           #manyToOne:Lcom/baidu/bulletin/database/ManyToOne;
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/database/Session;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/baidu/bulletin/database/Session;->classToSqliteType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 368
    .end local v0           #field:Ljava/lang/reflect/Field;
    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " integer, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "constraint channel_FK foreign key("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") references "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/baidu/bulletin/database/Session;->mTableName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "(_id) ON DELETE CASCADE)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    sget-object v10, Lcom/baidu/bulletin/database/Session;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Assist table "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private getAnnotationFields(Ljava/lang/Class;)V
    .locals 1
    .parameter "clazz"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/baidu/bulletin/database/Session;->mFileds:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/baidu/bulletin/database/Session;->recursiveColumnNames(Ljava/lang/Class;Ljava/util/List;)V

    .line 294
    return-void
.end method

.method private getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 3
    .parameter "field"

    .prologue
    .line 297
    const-class v2, Lcom/baidu/bulletin/database/Column;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/database/Column;

    .line 298
    .local v0, column:Lcom/baidu/bulletin/database/Column;
    if-eqz v0, :cond_1

    .line 299
    invoke-interface {v0}, Lcom/baidu/bulletin/database/Column;->name()Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, fieldName:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 306
    .end local v1           #fieldName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getId(Ljava/lang/Object;)J
    .locals 5
    .parameter "obj"

    .prologue
    .line 46
    const-wide/16 v1, 0x0

    .line 49
    .local v1, value:J
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 50
    .local v0, idField:Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 54
    .end local v0           #idField:Ljava/lang/reflect/Field;
    :goto_0
    return-wide v1

    .line 52
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private hasNewFiledToUpdate(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 11
    .parameter "tableName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, fileds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Field;>;"
    const/4 v7, 0x0

    .line 439
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-object v7

    .line 442
    :cond_1
    iget-object v9, p0, Lcom/baidu/bulletin/database/Session;->mDatabase:Lcom/baidu/bulletin/database/DataBaseHelper;

    invoke-virtual {v9}, Lcom/baidu/bulletin/database/DataBaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 443
    .local v3, database:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SELECT * FROM "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 444
    .local v8, sql:Ljava/lang/String;
    const/4 v2, 0x0

    .line 445
    .local v2, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 446
    .local v0, columnNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v7, newFields:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Field;>;"
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v3, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 449
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    .line 450
    .local v1, count:I
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 451
    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v1, :cond_3

    .line 452
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Field;

    .line 453
    .local v5, field:Ljava/lang/reflect/Field;
    invoke-direct {p0, v5}, Lcom/baidu/bulletin/database/Session;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 454
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 458
    .end local v1           #count:I
    .end local v5           #field:Ljava/lang/reflect/Field;
    .end local v6           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .line 459
    .local v4, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v9, Lcom/baidu/bulletin/database/Session;->TAG:Ljava/lang/String;

    const-string v10, "query is table need update fail"

    invoke-static {v9, v10, v4}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    if-eqz v2, :cond_0

    .line 462
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 461
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #count:I
    :cond_3
    if-eqz v2, :cond_0

    .line 462
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 461
    .end local v1           #count:I
    :catchall_0
    move-exception v9

    if-eqz v2, :cond_4

    .line 462
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v9
.end method

.method private isTableExist(Ljava/lang/String;)Z
    .locals 9
    .parameter "tableName"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 414
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move v5, v6

    .line 435
    :cond_1
    :goto_0
    return v5

    .line 417
    :cond_2
    iget-object v7, p0, Lcom/baidu/bulletin/database/Session;->mDatabase:Lcom/baidu/bulletin/database/DataBaseHelper;

    invoke-virtual {v7}, Lcom/baidu/bulletin/database/DataBaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 418
    .local v2, database:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "SELECT count(*) FROM sqlite_master WHERE type=\'table\' and name=?"

    .line 419
    .local v4, sql:Ljava/lang/String;
    const/4 v1, 0x0

    .line 421
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v7, 0x1

    :try_start_0
    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v2, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 422
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 423
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 424
    .local v0, count:I
    if-lez v0, :cond_3

    .line 431
    if-eqz v1, :cond_1

    .line 432
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 431
    .end local v0           #count:I
    :cond_3
    if-eqz v1, :cond_4

    .line 432
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move v5, v6

    .line 435
    goto :goto_0

    .line 428
    :catch_0
    move-exception v3

    .line 429
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v5, Lcom/baidu/bulletin/database/Session;->TAG:Ljava/lang/String;

    const-string v7, "query is exist table fail"

    invoke-static {v5, v7, v3}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    if-eqz v1, :cond_4

    .line 432
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 431
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_5

    .line 432
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v5
.end method

.method private objToContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 9
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 195
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 196
    .local v6, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 197
    .local v3, fields:[Ljava/lang/reflect/Field;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_a

    aget-object v2, v0, v4

    .line 198
    .local v2, field:Ljava/lang/reflect/Field;
    const-class v7, Lcom/baidu/bulletin/database/Column;

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 199
    const-string v7, "_id"

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 197
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 203
    .local v1, clazz:Ljava/lang/Class;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 204
    const-class v7, Ljava/lang/String;

    if-ne v7, v1, :cond_2

    .line 205
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 206
    :cond_2
    const-class v7, Ljava/lang/Boolean;

    if-eq v7, v1, :cond_3

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v7, v1, :cond_4

    .line 207
    :cond_3
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 208
    :cond_4
    const-class v7, Ljava/lang/Integer;

    if-eq v7, v1, :cond_5

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v7, v1, :cond_6

    .line 209
    :cond_5
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 210
    :cond_6
    const-class v7, Ljava/lang/Long;

    if-eq v7, v1, :cond_7

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v7, v1, :cond_8

    .line 211
    :cond_7
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 212
    :cond_8
    const-class v7, Ljava/lang/Short;

    if-eq v7, v1, :cond_9

    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v7, v1, :cond_0

    .line 213
    :cond_9
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto :goto_1

    .line 218
    .end local v1           #clazz:Ljava/lang/Class;
    .end local v2           #field:Ljava/lang/reflect/Field;
    :cond_a
    return-object v6
.end method

.method private recursiveColumnNames(Ljava/lang/Class;Ljava/util/List;)V
    .locals 8
    .parameter "clazz"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p2, annotationFields:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Field;>;"
    const-class v6, Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 277
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 278
    .local v2, fields:[Ljava/lang/reflect/Field;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 279
    .local v1, field:Ljava/lang/reflect/Field;
    const-class v6, Lcom/baidu/bulletin/database/OneToMany;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 280
    iget-object v6, p0, Lcom/baidu/bulletin/database/Session;->mOneToManyFields:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_0
    const-class v6, Lcom/baidu/bulletin/database/Column;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 278
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 285
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 287
    .end local v1           #field:Ljava/lang/reflect/Field;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 288
    .local v5, superclazz:Ljava/lang/Class;
    invoke-direct {p0, v5, p2}, Lcom/baidu/bulletin/database/Session;->recursiveColumnNames(Ljava/lang/Class;Ljava/util/List;)V

    .line 290
    .end local v0           #arr$:[Ljava/lang/reflect/Field;
    .end local v2           #fields:[Ljava/lang/reflect/Field;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #superclazz:Ljava/lang/Class;
    :cond_3
    return-void
.end method

.method private setId(Ljava/lang/Object;J)V
    .locals 4
    .parameter "obj"
    .parameter "id"

    .prologue
    .line 59
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 60
    .local v1, idField:Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 61
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1           #idField:Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/baidu/bulletin/database/Session;->TAG:Ljava/lang/String;

    const-string v3, "setId to Obj Fail"

    invoke-static {v2, v3, v0}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/baidu/bulletin/database/Session;->mDatabase:Lcom/baidu/bulletin/database/DataBaseHelper;

    invoke-virtual {v0}, Lcom/baidu/bulletin/database/DataBaseHelper;->close()V

    .line 477
    return-void
.end method

.method public delete(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 4
    .parameter "clazz"
    .parameter "selection"

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/baidu/bulletin/database/Session;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 223
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 225
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/baidu/bulletin/database/Session;->getTableNamefromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 234
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v1

    .line 230
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v2, Lcom/baidu/bulletin/database/Session;->TAG:Ljava/lang/String;

    const-string v3, "Delete Obj Fail"

    invoke-static {v2, v3, v1}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public getObjectFromCursor(Landroid/database/Cursor;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 12
    .parameter "cursor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 238
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    .line 239
    .local v9, obj:Ljava/lang/Object;,"TT;"
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 240
    .local v5, fields:[Ljava/lang/reflect/Field;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v8, v0

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v8, :cond_8

    aget-object v2, v0, v6

    .line 241
    .local v2, field:Ljava/lang/reflect/Field;
    const-class v10, Lcom/baidu/bulletin/database/Column;

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 242
    const-class v10, Lcom/baidu/bulletin/database/Column;

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/database/Column;

    .line 243
    .local v1, column:Lcom/baidu/bulletin/database/Column;
    invoke-interface {v1}, Lcom/baidu/bulletin/database/Column;->name()Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, fieldName:Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 245
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 247
    :cond_0
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 248
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 249
    .local v7, index:I
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 250
    .local v3, fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v10, Ljava/lang/Integer;

    if-eq v3, v10, :cond_1

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v10, :cond_3

    .line 251
    :cond_1
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v2, v9, v10}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 240
    .end local v1           #column:Lcom/baidu/bulletin/database/Column;
    .end local v3           #fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #fieldName:Ljava/lang/String;
    .end local v7           #index:I
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 252
    .restart local v1       #column:Lcom/baidu/bulletin/database/Column;
    .restart local v3       #fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v4       #fieldName:Ljava/lang/String;
    .restart local v7       #index:I
    :cond_3
    const-class v10, Ljava/lang/Long;

    if-eq v3, v10, :cond_4

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v10, :cond_5

    .line 253
    :cond_4
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v2, v9, v10, v11}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_1

    .line 254
    :cond_5
    const-class v10, Ljava/lang/String;

    if-ne v3, v10, :cond_6

    .line 255
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 256
    :cond_6
    const-class v10, Ljava/lang/Boolean;

    if-eq v3, v10, :cond_7

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v10, :cond_2

    .line 258
    :cond_7
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v2, v9, v10}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_1

    .line 263
    .end local v1           #column:Lcom/baidu/bulletin/database/Column;
    .end local v2           #field:Ljava/lang/reflect/Field;
    .end local v3           #fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #fieldName:Ljava/lang/String;
    .end local v7           #index:I
    :cond_8
    return-object v9
.end method

.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/baidu/bulletin/database/Session;->mDatabase:Lcom/baidu/bulletin/database/DataBaseHelper;

    invoke-virtual {v0}, Lcom/baidu/bulletin/database/DataBaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getTableNamefromClass(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .parameter "clazz"

    .prologue
    .line 267
    const-class v2, Lcom/baidu/bulletin/database/Table;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/database/Table;

    .line 268
    .local v0, table:Lcom/baidu/bulletin/database/Table;
    invoke-interface {v0}, Lcom/baidu/bulletin/database/Table;->name()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, tableName:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 272
    :cond_0
    return-object v1
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/baidu/bulletin/database/Session;->mDatabase:Lcom/baidu/bulletin/database/DataBaseHelper;

    invoke-virtual {v0}, Lcom/baidu/bulletin/database/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public save(Ljava/lang/Object;)V
    .locals 7
    .parameter "obj"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/baidu/bulletin/database/Session;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 69
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 71
    :try_start_0
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/database/Session;->buildInsertContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v4

    .line 72
    .local v4, values:Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/baidu/bulletin/database/Session;->mTableName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 73
    .local v2, id:J
    invoke-direct {p0, p1, v2, v3}, Lcom/baidu/bulletin/database/Session;->setId(Ljava/lang/Object;J)V

    .line 74
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 80
    .end local v2           #id:J
    .end local v4           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v5, Lcom/baidu/bulletin/database/Session;->TAG:Ljava/lang/String;

    const-string v6, "Insert Obj Fail"

    invoke-static {v5, v6, v1}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method public save([Ljava/lang/Object;)V
    .locals 11
    .parameter "objs"

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/baidu/bulletin/database/Session;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 84
    .local v1, database:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 86
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    :try_start_0
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v7, v0, v3

    .line 87
    .local v7, obj:Ljava/lang/Object;
    invoke-direct {p0, v7}, Lcom/baidu/bulletin/database/Session;->buildInsertContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v8

    .line 88
    .local v8, values:Landroid/content/ContentValues;
    iget-object v9, p0, Lcom/baidu/bulletin/database/Session;->mTableName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 89
    .local v4, id:J
    invoke-direct {p0, v7, v4, v5}, Lcom/baidu/bulletin/database/Session;->setId(Ljava/lang/Object;J)V

    .line 86
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    .end local v4           #id:J
    .end local v7           #obj:Ljava/lang/Object;
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 97
    .end local v3           #i$:I
    .end local v6           #len$:I
    :goto_1
    return-void

    .line 92
    :catch_0
    move-exception v2

    .line 93
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v9, Lcom/baidu/bulletin/database/Session;->TAG:Ljava/lang/String;

    const-string v10, "Insert Obj Fail"

    invoke-static {v9, v10, v2}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v9
.end method

.method public saveSecondary([Ljava/lang/Object;)V
    .locals 12
    .parameter "objs"

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/baidu/bulletin/database/Session;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 140
    .local v2, database:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 142
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    :try_start_0
    array-length v8, v0

    .local v8, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v8, :cond_0

    aget-object v9, v0, v5

    .line 143
    .local v9, obj:Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 144
    .local v4, foreignClass:Ljava/lang/Class;
    invoke-direct {p0, v9}, Lcom/baidu/bulletin/database/Session;->buildSecondaryContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v1

    .line 145
    .local v1, contentValues:Landroid/content/ContentValues;
    invoke-virtual {p0, v4}, Lcom/baidu/bulletin/database/Session;->getTableNamefromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 146
    .local v6, id:J
    invoke-direct {p0, v9, v6, v7}, Lcom/baidu/bulletin/database/Session;->setId(Ljava/lang/Object;J)V

    .line 142
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 149
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v4           #foreignClass:Ljava/lang/Class;
    .end local v6           #id:J
    .end local v9           #obj:Ljava/lang/Object;
    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 155
    .end local v5           #i$:I
    .end local v8           #len$:I
    :goto_1
    return-void

    .line 150
    :catch_0
    move-exception v3

    .line 151
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v10, Lcom/baidu/bulletin/database/Session;->TAG:Ljava/lang/String;

    const-string v11, "Insert Secondary Obj Fail"

    invoke-static {v10, v11, v3}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v10
.end method

.method public update(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .parameter "obj"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/baidu/bulletin/database/Session;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 105
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 107
    :try_start_0
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/database/Session;->buildUpdateContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v2

    .line 108
    .local v2, values:Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/baidu/bulletin/database/Session;->mTableName:Ljava/lang/String;

    invoke-virtual {v0, v3, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 109
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 115
    .end local v2           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Lcom/baidu/bulletin/database/Session;->TAG:Ljava/lang/String;

    const-string v4, "Update Obj Fail"

    invoke-static {v3, v4, v1}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public update([Ljava/lang/Object;)V
    .locals 14
    .parameter "objs"

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/baidu/bulletin/database/Session;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 119
    .local v1, database:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 121
    :try_start_0
    const-string v6, "_id=?"

    .line 122
    .local v6, selection:Ljava/lang/String;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 123
    .local v5, obj:Ljava/lang/Object;
    invoke-direct {p0, v5}, Lcom/baidu/bulletin/database/Session;->buildUpdateContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v7

    .line 124
    .local v7, values:Landroid/content/ContentValues;
    iget-object v8, p0, Lcom/baidu/bulletin/database/Session;->mTableName:Ljava/lang/String;

    const-string v9, "_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {p0, v5}, Lcom/baidu/bulletin/database/Session;->getId(Ljava/lang/Object;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v1, v8, v7, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 122
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    .end local v5           #obj:Ljava/lang/Object;
    .end local v7           #values:Landroid/content/ContentValues;
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 132
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #selection:Ljava/lang/String;
    :goto_1
    return-void

    .line 127
    :catch_0
    move-exception v2

    .line 128
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v8, Lcom/baidu/bulletin/database/Session;->TAG:Ljava/lang/String;

    const-string v9, "Update Obj Fail"

    invoke-static {v8, v9, v2}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8
.end method

.method public updateSecondary(Ljava/lang/Object;)V
    .locals 11
    .parameter "obj"

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/baidu/bulletin/database/Session;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 159
    .local v1, database:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 161
    :try_start_0
    const-string v4, "_id=?"

    .line 162
    .local v4, selection:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 163
    .local v3, foreignClass:Ljava/lang/Class;
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/database/Session;->buildSecondaryContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    .line 164
    .local v0, contentValues:Landroid/content/ContentValues;
    sget-object v5, Lcom/baidu/bulletin/database/Session;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "contentvalues is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0, v3}, Lcom/baidu/bulletin/database/Session;->getTableNamefromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {p0, p1}, Lcom/baidu/bulletin/database/Session;->getId(Ljava/lang/Object;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v1, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 167
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 173
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v3           #foreignClass:Ljava/lang/Class;
    .end local v4           #selection:Ljava/lang/String;
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v2

    .line 169
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v5, Lcom/baidu/bulletin/database/Session;->TAG:Ljava/lang/String;

    const-string v6, "Update Secondary Obj Fail"

    invoke-static {v5, v6, v2}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method
