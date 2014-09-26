.class public Lcom/inveno/flow/database/table/TableInfo;
.super Ljava/lang/Object;
.source "TableInfo.java"


# static fields
.field private static final tableInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/inveno/flow/database/table/TableInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checkDatabese:Z

.field private className:Ljava/lang/String;

.field private id:Lcom/inveno/flow/database/table/Id;

.field public final manyToOneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/inveno/flow/database/table/ManyToOne;",
            ">;"
        }
    .end annotation
.end field

.field public final oneToManyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/inveno/flow/database/table/OneToMany;",
            ">;"
        }
    .end annotation
.end field

.field public final propertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/inveno/flow/database/table/Property;",
            ">;"
        }
    .end annotation
.end field

.field private tableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inveno/flow/database/table/TableInfo;->tableInfoMap:Ljava/util/HashMap;

    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inveno/flow/database/table/TableInfo;->propertyMap:Ljava/util/HashMap;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inveno/flow/database/table/TableInfo;->oneToManyMap:Ljava/util/HashMap;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inveno/flow/database/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    .line 32
    return-void
.end method

.method public static get(Ljava/lang/Class;)Lcom/inveno/flow/database/table/TableInfo;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/inveno/flow/database/table/TableInfo;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 41
    new-instance v9, Ljava/lang/RuntimeException;

    .line 42
    const-string v10, "\u6b64\u4f20\u5165\u5b57\u8282\u7801\u6587\u4ef6\u4e3anull"

    .line 41
    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 45
    :cond_0
    sget-object v9, Lcom/inveno/flow/database/table/TableInfo;->tableInfoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/inveno/flow/database/table/TableInfo;

    .line 48
    .local v8, tableInfo:Lcom/inveno/flow/database/table/TableInfo;
    if-nez v8, :cond_7

    .line 49
    new-instance v8, Lcom/inveno/flow/database/table/TableInfo;

    .end local v8           #tableInfo:Lcom/inveno/flow/database/table/TableInfo;
    invoke-direct {v8}, Lcom/inveno/flow/database/table/TableInfo;-><init>()V

    .line 51
    .restart local v8       #tableInfo:Lcom/inveno/flow/database/table/TableInfo;
    invoke-static {p0}, Lcom/inveno/flow/database/table/ClassUtils;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/inveno/flow/database/table/TableInfo;->setTableName(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/inveno/flow/database/table/TableInfo;->setClassName(Ljava/lang/String;)V

    .line 55
    invoke-static {p0}, Lcom/inveno/flow/database/table/ClassUtils;->getPrimaryKeyField(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 56
    .local v1, idField:Ljava/lang/reflect/Field;
    if-eqz v1, :cond_9

    .line 57
    new-instance v0, Lcom/inveno/flow/database/table/Id;

    invoke-direct {v0}, Lcom/inveno/flow/database/table/Id;-><init>()V

    .line 58
    .local v0, id:Lcom/inveno/flow/database/table/Id;
    invoke-static {v1}, Lcom/inveno/flow/database/table/FieldUtils;->getColumnByField(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/inveno/flow/database/table/Id;->setColumn(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/inveno/flow/database/table/Id;->setFieldName(Ljava/lang/String;)V

    .line 60
    invoke-static {p0, v1}, Lcom/inveno/flow/database/table/FieldUtils;->getFieldSetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/inveno/flow/database/table/Id;->setSet(Ljava/lang/reflect/Method;)V

    .line 61
    invoke-static {p0, v1}, Lcom/inveno/flow/database/table/FieldUtils;->getFieldGetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/inveno/flow/database/table/Id;->setGet(Ljava/lang/reflect/Method;)V

    .line 62
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/inveno/flow/database/table/Id;->setDataType(Ljava/lang/Class;)V

    .line 64
    invoke-virtual {v8, v0}, Lcom/inveno/flow/database/table/TableInfo;->setId(Lcom/inveno/flow/database/table/Id;)V

    .line 70
    invoke-static {p0}, Lcom/inveno/flow/database/table/ClassUtils;->getPropertyList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    .line 71
    .local v7, pList:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/database/table/Property;>;"
    if-eqz v7, :cond_2

    .line 72
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_a

    .line 79
    :cond_2
    invoke-static {p0}, Lcom/inveno/flow/database/table/ClassUtils;->getManyToOneList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 80
    .local v3, mList:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/database/table/ManyToOne;>;"
    if-eqz v3, :cond_4

    .line 81
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_b

    .line 88
    :cond_4
    invoke-static {p0}, Lcom/inveno/flow/database/table/ClassUtils;->getOneToManyList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 89
    .local v5, oList:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/database/table/OneToMany;>;"
    if-eqz v5, :cond_6

    .line 90
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_c

    .line 96
    :cond_6
    sget-object v9, Lcom/inveno/flow/database/table/TableInfo;->tableInfoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .end local v0           #id:Lcom/inveno/flow/database/table/Id;
    .end local v1           #idField:Ljava/lang/reflect/Field;
    .end local v3           #mList:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/database/table/ManyToOne;>;"
    .end local v5           #oList:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/database/table/OneToMany;>;"
    .end local v7           #pList:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/database/table/Property;>;"
    :cond_7
    if-nez v8, :cond_8

    .line 102
    :cond_8
    return-object v8

    .line 66
    .restart local v1       #idField:Ljava/lang/reflect/Field;
    :cond_9
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "\u6b64\u7c7b\u6ca1\u6709\u4e3b\u952e\uff01"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 72
    .restart local v0       #id:Lcom/inveno/flow/database/table/Id;
    .restart local v7       #pList:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/database/table/Property;>;"
    :cond_a
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/inveno/flow/database/table/Property;

    .line 73
    .local v6, p:Lcom/inveno/flow/database/table/Property;
    if-eqz v6, :cond_1

    .line 74
    iget-object v10, v8, Lcom/inveno/flow/database/table/TableInfo;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/inveno/flow/database/table/Property;->getColumn()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 81
    .end local v6           #p:Lcom/inveno/flow/database/table/Property;
    .restart local v3       #mList:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/database/table/ManyToOne;>;"
    :cond_b
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inveno/flow/database/table/ManyToOne;

    .line 82
    .local v2, m:Lcom/inveno/flow/database/table/ManyToOne;
    if-eqz v2, :cond_3

    .line 83
    iget-object v10, v8, Lcom/inveno/flow/database/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/inveno/flow/database/table/ManyToOne;->getColumn()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 90
    .end local v2           #m:Lcom/inveno/flow/database/table/ManyToOne;
    .restart local v5       #oList:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/database/table/OneToMany;>;"
    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/inveno/flow/database/table/OneToMany;

    .line 91
    .local v4, o:Lcom/inveno/flow/database/table/OneToMany;
    if-eqz v4, :cond_5

    .line 92
    iget-object v10, v8, Lcom/inveno/flow/database/table/TableInfo;->oneToManyMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/inveno/flow/database/table/OneToMany;->getColumn()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public static get(Ljava/lang/String;)Lcom/inveno/flow/database/table/TableInfo;
    .locals 3
    .parameter "className"

    .prologue
    .line 112
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/flow/database/table/TableInfo;->get(Ljava/lang/Class;)Lcom/inveno/flow/database/table/TableInfo;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "\u6b64\u7c7b\u540d\u4e0d\u5b58\u5728\uff01"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/inveno/flow/database/table/TableInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Lcom/inveno/flow/database/table/Id;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/inveno/flow/database/table/TableInfo;->id:Lcom/inveno/flow/database/table/Id;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/inveno/flow/database/table/TableInfo;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public isCheckDatabese()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/inveno/flow/database/table/TableInfo;->checkDatabese:Z

    return v0
.end method

.method public setCheckDatabese(Z)V
    .locals 0
    .parameter "checkDatabese"

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/inveno/flow/database/table/TableInfo;->checkDatabese:Z

    .line 148
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .parameter "className"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/inveno/flow/database/table/TableInfo;->className:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setId(Lcom/inveno/flow/database/table/Id;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/inveno/flow/database/table/TableInfo;->id:Lcom/inveno/flow/database/table/Id;

    .line 140
    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0
    .parameter "tableName"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/inveno/flow/database/table/TableInfo;->tableName:Ljava/lang/String;

    .line 132
    return-void
.end method
